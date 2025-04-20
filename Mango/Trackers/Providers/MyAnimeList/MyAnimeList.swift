//
//  MyAnimeList.swift
//  Mango
//
//  Created by Angelo on 12/01/2025.
//

import Foundation
import Alamofire

let MYANIMELIST_APP_ID = "22266a553428cdcadcd854e8622a52ab"
let MYANIMELIST_BASE_URL = "https://api.myanimelist.net/v2"

struct MyAnimeListTrackerAuth: Codable {
    var code: String
    var expires_at: Date
    var refresh_token: String
}

struct MyAnimeListTracker: Tracker {
    static var trackerType: TrackerType = .myanimelist
    // static var auth_url: URL = URL(string: "https://myanimelist.net/v1/oauth2/authorize?response_type=code&client_id=\(MYANIMELIST_APP_ID)&code_challenge=mango")!
    static var name: String = "MyAnimeList"
    static var icon: String = "MyAnimeListIcon"
    static var publicUrl: String = "https://myanimelist.net"

    var auth: MyAnimeListTrackerAuth
    var session: Alamofire.Session
    
    init(trackers: Trackers) {
        auth = trackers.myanimelist!
        session = Alamofire.Session()
    }
    
    init(auth: MyAnimeListTrackerAuth) {
        self.auth = auth
        session = Alamofire.Session()
    }
    
    static func formatAuthUrl() -> (url: URL, challenge: String?) {
        let characters = "1234567890qwertyuiopasdfghjklzxcvbnm"
        let challenge = String((0...45).map { _ in characters.randomElement()! })
        //
        let url = URL(string: "https://myanimelist.net/v1/oauth2/authorize?response_type=code&client_id=\(MYANIMELIST_APP_ID)&code_challenge=\(challenge)&grant_type=authorization_code")!
        return (url: url, challenge: challenge)
    }
    
    static func getAccessTokenFromUrl(url: URL, challenge_code: String?) async throws -> Any? {
        var query: [String.SubSequence: String.SubSequence] = [:]
        
        for part in url.query()!.split(separator: "&") {
            let kv = part.split(separator: "=", maxSplits: 2)
            query[kv[0]] = kv[1]
        }
        
        guard let authCode = query["code"] else { return nil }
        
        let parameters: [String: String] = [
            "client_id": MYANIMELIST_APP_ID,
            "code": String(authCode),
            "code_verifier": challenge_code!,
            "grant_type": "authorization_code"
        ]
        
        let response = Alamofire.Session.default.request("https://myanimelist.net/v1/oauth2/token", method: .post, parameters: parameters, encoder: .urlEncodedForm)

        let data = try await response.serializingDecodable(MyAnimeListAccessTokenResponse.self).value
        
        return MyAnimeListTrackerAuth(code: data.access_token, expires_at: Date.now.addingTimeInterval(Double(data.expires_in)), refresh_token: data.refresh_token)
    }
    
    func getLinkedUser() async throws -> TrackedUser {
        let request = session.request("\(MYANIMELIST_BASE_URL)/users/@me", headers: HTTPHeaders(dictionaryLiteral: ("Authorization", "Bearer \(auth.code)")))
        
        let user = try await request.serializingDecodable(MyAnimeListUserInformation.self).value

        return TrackedUser(username: user.name, profileLink: "https://myanimelist.net/profile/\(user.name)", avatar: user.picture)
    }
    
    func search(name: String) async throws -> [Manga] {
        let parameters: [String: String] = [
            "q": name,
            "fields": "id,title,main_picture,alternative_titles,start_date,end_date,synopsis,genres,created_at,updated_at,media_type,status,num_chapters,authors"
        ]
        
        let request = session.request("\(MYANIMELIST_BASE_URL)/manga", parameters: parameters, encoding: URLEncoding.queryString, headers: HTTPHeaders(dictionaryLiteral: ("Authorization", "Bearer \(auth.code)")))
        
        return try await request.serializingDecodable(MyAnimeListSearchResponse.self)
            .value
            .data
            .filter { $0.node.media_type != .light_novel }
            .map { .myanimelist($0.node) }
    }
    
    func getManga(id: String) async throws -> Manga {
        let parameters: [String: String] = [
            "fields": "id,title,main_picture,alternative_titles,start_date,end_date,synopsis,genres,created_at,updated_at,media_type,status,num_chapters,authors"
        ]
        
        let request = session.request("\(MYANIMELIST_BASE_URL)/manga/\(id)", parameters: parameters, encoding: URLEncoding.queryString, headers: HTTPHeaders(dictionaryLiteral: ("Authorization", "Bearer \(auth.code)")))
        return .myanimelist(try await request.serializingDecodable(MyAnimeListManga.self).value)
    }
    
    func getTrackedValues(id: String) async throws -> TrackedManga.Values {
        var parameters = MyAnimeListGetMangaListParameters(
            fields: "list_status,id,title,main_picture,alternative_titles,start_date,end_date,synopsis,genres,created_at,updated_at,media_type,status,num_chapters,authors",
            limit: 100,
            offset: 0
        )

        var found = TrackedManga.Values()
        
        while true {
            let request = session.request("\(MYANIMELIST_BASE_URL)/users/@me/mangalist", parameters: parameters, headers: HTTPHeaders(dictionaryLiteral: ("Authorization", "Bearer \(auth.code)")))
            
            let values = try await request.serializingDecodable(MyAnimeListGetMangaListResponse.self).value
            
            for entry in values.data {
                if String(entry.node.id) == id {
                    var status: ReadingStatus? = nil
                    
                    switch entry.list_status.status {
                        case .reading:
                            status = .reading
                        case .completed:
                            status = .completed
                        case .on_hold:
                            status = .onHold
                        case .dropped:
                            status = .dropped
                        case .plan_to_read:
                            status = .planToRead
                        case .none:
                            ()
                    }
                    
                    found = TrackedManga.Values(
                        status: status,
                        progress: entry.list_status.num_chapters_read,
                        score: entry.list_status.score,
                        startedAt: entry.list_status.start_date.flatMap {
                            let parts = $0.split(separator: "-")
                            return DateComponents(year: Int(parts[0]), month: Int(parts[1]), day: Int(parts[2])).date
                        },
                        finishedAt: entry.list_status.finish_date.flatMap {
                            let parts = $0.split(separator: "-")
                            return DateComponents(year: Int(parts[0]), month: Int(parts[1]), day: Int(parts[2])).date
                        }
                    )
                    
                    break
                }
            }
            
            if values.data.count != 100 {
                break
            } else {
                parameters.offset += 100
            }
        }
        
        return found
    }
    
    func updateTrackedValues(id: String, trackedValues: TrackedManga.Values) async throws -> TrackedManga.Values {
        var parameters = MyAnimeListListStatus(is_rereading: false)
        
        switch trackedValues.status {
            case .reading:
                parameters.status = .reading
            case .completed:
                parameters.status = .completed
            case .onHold:
                parameters.status = .on_hold
            case .dropped:
                parameters.status = .dropped
            case .planToRead:
                parameters.status = .plan_to_read
            case .rereading:
                parameters.status = .reading
                parameters.is_rereading = true
            case .none:
                ()
        }
        
        parameters.num_chapters_read = trackedValues.progress
        parameters.score = trackedValues.score
        parameters.start_date = trackedValues.startedAt.map {
            let components = Calendar.current.dateComponents([.day, .month, .year], from: $0)
            let year = components.year!
            let month = String(components.month!).padding(toLength: 2, withPad: " ", startingAt: 0)
            let day = String(components.day!).padding(toLength: 2, withPad: " ", startingAt: 0)
            return "\(year)-\(month)-\(day)"
        }
        parameters.finish_date = trackedValues.finishedAt.map {
            let components = Calendar.current.dateComponents([.day, .month, .year], from: $0)
            let year = components.year!
            let month = String(components.month!).padding(toLength: 2, withPad: " ", startingAt: 0)
            let day = String(components.day!).padding(toLength: 2, withPad: " ", startingAt: 0)
            return "\(year)-\(month)-\(day)"
        }
        
        let request = session.request("\(MYANIMELIST_BASE_URL)/manga/\(id)/my_list_status", method: .patch, parameters: parameters, encoder: .urlEncodedForm, headers: HTTPHeaders(dictionaryLiteral: ("Authorization", "Bearer \(auth.code)")))

        let value = try await request.serializingString().value
        print(value)
        return trackedValues
    }
    
    func unlink() async throws {
        fatalError("")
    }
    
    static func formatMangaUrl(id: String) -> URL {
        fatalError("")
    }
}
