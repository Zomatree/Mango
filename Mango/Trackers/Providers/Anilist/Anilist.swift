//
//  Anilist.swift
//  Mango
//
//  Created by Angelo on 17/12/2024.
//

import Foundation
import SwiftGraphQLClient
import SwiftGraphQL
import GraphQL
import SwiftJWT
import Combine

var ANILIST_APP_ID: Int = 23111

struct AnilistTrackerAuth: Codable {
    var token: String
    var userId: Int
    var expires_at: Date
}

struct AnilistMedia: Codable, Equatable, Hashable {
    struct Title: Codable, Equatable, Hashable {
        var romaji: String?
        var english: String?
        var native: String?
    }
    
    var id: Int
    var title: Title?
    var description: String?
    var coverImage: String?
    var status: Enums.MediaStatus?
    var chapters: Int?
    var format: Enums.MediaFormat?
    var artist: String?
    var author: String?
}

struct AnilistJWTClaims: Claims {
    var sub: String
}

struct FailedError: Error {
    var reason: String
}

struct AnilistTracker: Tracker {
    static var trackerType: TrackerType = .anilist
    static var name: String = "AniList"
    static var icon: String = "AniListIcon"
    static var publicUrl: String = "https://anilist.co"
    
    static let mediaSelection = Selection.Media<AnilistMedia> {
        let staff = try $0.staff(selection: Selection.StaffConnection<[(role: String?, name: String?)]> {
            try $0.edges(selection: Selection.StaffEdge<(role: String?, name: String?)> {
                let role = try $0.role()
                let name = try $0.node(selection: Selection.Staff<String?> {
                    try $0.name(selection: Selection.StaffName<String?> {
                        try $0.full()
                    }.optional())
                }.optional())
                
                return (role: role, name: name)
            }.nonNullOrFail.list.nonNullOrFail)
        }.nonNullOrFail)
        
        return AnilistMedia(
            id: try $0.id(),
            title: try $0.title(
                selection: Selection.MediaTitle<AnilistMedia.Title?> {
                    AnilistMedia.Title(
                        romaji: try $0.romaji(),
                        english: try $0.english(),
                        native: try $0.native()
                    )
                }.optional())!,
            description: try $0.description(asHtml: false),
            coverImage: try $0.coverImage(selection: Selection.MediaCoverImage<String?> { try $0.medium() }.optional()),
            status: try $0.status(),
            chapters: try $0.chapters(),
            format: try $0.format(),
            artist: staff.first { $0.role == "Art" }?.name,
            author: staff.first { $0.role == "Story" }?.name
        )
    }
    
    static let mediaListSelection = Selection.MediaList<TrackedManga.Values> {
        TrackedManga.Values(
            status: try $0.status().flatMap({ status in
                switch status {
                    case .current:
                        return .reading
                    case .planning:
                        return .planToRead
                    case .completed:
                        return .completed
                    case .dropped:
                        return .dropped
                    case .paused:
                        return .onHold
                    case .repeating:
                        return .rereading
                }
            }),
            progress: try $0.progress(),
            score: try $0.score().map { Int($0) },
            startedAt: try $0.startedAt(selection: Selection.FuzzyDate {
                let components = DateComponents(calendar: Calendar.current, year: try $0.year(), month: try $0.month(), day: try $0.day())
                return components.date
            }.optional()),
            finishedAt: try $0.startedAt(selection: Selection.FuzzyDate {
                let components = DateComponents(calendar: Calendar.current, year: try $0.year(), month: try $0.month(), day: try $0.day())
                return components.date
            }.optional())
        )
     }
    
    var auth: AnilistTrackerAuth
    var client: SwiftGraphQLClient.Client
    
    init(auth: AnilistTrackerAuth) {
        self.auth = auth
        self.client = SwiftGraphQLClient.Client(
            request: URLRequest(url: URL(string: "https://graphql.anilist.co")!),
            exchanges: [
                AuthExchange(header: "Authorization", getToken: { "Bearer \(auth.token)" }),
                DebugExchange(debug: true),
                ErrorExchange(onError: { print($0, $1) }),
                FetchExchange()
            ]
        )
    }
    
    init(trackers: Trackers) {
        let auth = trackers.anilist!
        self.auth = auth
        self.client = SwiftGraphQLClient.Client(request: URLRequest(url: URL(string: "https://graphql.anilist.co")!), exchanges: [AuthExchange(header: "Authorization", getToken: {
            "Bearer \(auth.token)"
        }), DebugExchange(debug: true), ErrorExchange(onError: { print($0, $1) }), FetchExchange()])
    }
    
    static func getAccessTokenFromUrl(url: URL, challenge_code: String?) async throws -> Any? {
        var frags: [String.SubSequence: String.SubSequence] = [:]
        
        for part in url.fragment()!.split(separator: "&") {
            let kv = part.split(separator: "=", maxSplits: 2)
            frags[kv[0]] = kv[1]
        }
        
        if let access_token = frags["access_token"], let expires_in = frags["expires_in"] {
            let expires_at = Date.now.addingTimeInterval(Double(expires_in)!)
            let decoder = JWTDecoder(jwtVerifier: .none)
            let jwt = try! decoder.decode(JWT<AnilistJWTClaims>.self, fromString: String(access_token))
            return AnilistTrackerAuth(token: String(access_token), userId: Int(jwt.claims.sub)!, expires_at: expires_at)
        }
        
        return nil
    }
    
    static func formatAuthUrl() -> (url: URL, challenge: String?) {
        return (
            url: URL(string: "https://anilist.co/api/v2/oauth/authorize?client_id=\(ANILIST_APP_ID)&response_type=token")!,
            challenge: nil
        )
    }
    
    func getLinkedUser() async throws -> TrackedUser {
        let query = Selection.Query<TrackedUser?> {
            return try $0.viewer(selection: Selection.User<TrackedUser?> {
                TrackedUser(
                    username: try $0.name(),
                    description: try $0.about(asHtml: false),
                    profileLink: try $0.siteUrl(),
                    avatar: try $0.avatar(selection: Selection.UserAvatar { try $0.medium() }.optional())
                )
            }.optional())
        }
        
        return try await withCheckedThrowingContinuation { continuation in
            var cancellable: AnyCancellable?
            
            cancellable = client.query(query)
                .sink { result in
                    print(result)
                    switch result {
                        case .finished:
                            continuation.resume(throwing: FailedError(reason: "idk why"))
                        case let .failure(error):
                            continuation.resume(throwing: error)
                    }
                    cancellable?.cancel()
                } receiveValue: { value in
                    continuation.resume(with: .success(value.data!))
                }
        }
    }
    
    func search(name: String) async throws -> [Manga] {
        let query = Selection.Query<[AnilistMedia]> {
            try $0.page(
                selection: Selection.Page {
                    try $0.media(
                        type: OptionalArgument(present: .manga),
                        search: .init(present: name),
                        selection: AnilistTracker.mediaSelection.nonNullOrFail.list.nonNullOrFail
                    )
                    .filter { media in media.format == .manga }
                }.nonNullOrFail
            )
        }
        
        let result = try await client.query(query)
        
        return result.data.map(Manga.anilist)
    }
    
    func getManga(id: String) async throws -> Manga {
        let query = Selection.Query<AnilistMedia> {
            try $0.media(id: .init(present: Int(id)), selection: AnilistTracker.mediaSelection.nonNullOrFail)
        }
        
        return .anilist(try await client.query(query).data)
    }
    
    static func formatMangaUrl(id: String) -> URL {
        return URL(string: "https://anilist.co/manga/\(id)")!
    }

    func getTrackedValues(id: String) async throws -> TrackedManga.Values {
        let query = Selection.Query<TrackedManga.Values?> {
            try $0.mediaList(userId: .init(present: auth.userId), mediaId: .init(present: Int(id)), selection: AnilistTracker.mediaListSelection.nullable)
        }
        
        return (try await client.query(query)).data ?? TrackedManga.Values()
    }
    
    func updateTrackedValues(id: String, trackedValues: TrackedManga.Values) async throws -> TrackedManga.Values {
        let mediaStatus: Enums.MediaListStatus?
        
        switch trackedValues.status {
            case .reading:
                mediaStatus = .current
            case .completed:
                mediaStatus = .completed
            case .onHold:
                mediaStatus = .paused
            case .dropped:
                mediaStatus = .dropped
            case .planToRead:
                mediaStatus = .planning
            case .rereading:
                mediaStatus = .repeating
            case nil:
                mediaStatus = nil
        }
        
        let mutation = Selection.Mutation<TrackedManga.Values> {
            try $0.saveMediaListEntry(
                mediaId: .init(present: Int(id)!),
                status: .init(present: mediaStatus),
                score: .init(present: trackedValues.score.map { Double($0) }),
                progress: .init(present: trackedValues.progress),
                startedAt: .init(present: trackedValues.startedAt.map {
                    let parts = Calendar.current.dateComponents([.day, .month, .year], from: $0)
                    
                    return InputObjects.FuzzyDateInput(year: .init(present: parts.year), month: .init(present: parts.month), day: .init(present: parts.day)) }),
                completedAt: .init(present: trackedValues.finishedAt.map {
                    let parts = Calendar.current.dateComponents([.day, .month, .year], from: $0)
                    
                    return InputObjects.FuzzyDateInput(year: .init(present: parts.year), month: .init(present: parts.month), day: .init(present: parts.day)) }),
                selection: AnilistTracker.mediaListSelection.nonNullOrFail
            )
        }
        
        return try await client.query(mutation).data
    }
    
    
    func unlink() async throws {
        
    }
}
