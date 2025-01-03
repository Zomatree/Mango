//
//  Tracker.swift
//  Mango
//
//  Created by Angelo on 17/12/2024.
//

import Foundation

protocol Tracker {
    static var trackerType: TrackerType { get }
    static var auth_url: URL { get }
    static var name: String { get }
    static var icon: String { get }
    static var publicUrl: String { get }

    init(trackers: Trackers)
    
    func getLinkedUser() async throws -> TrackedUser
    func search(name: String) async throws -> [Manga]
    func getManga(id: String) async throws -> Manga
    func getTrackedValues(id: String) async throws -> TrackedManga.Values
    func updateTrackedValues(id: String, trackedValues: TrackedManga.Values) async throws -> TrackedManga.Values
    func unlink() async throws
    static func formatMangaUrl(id: String) -> URL
    
}

extension Tracker {
    var trackerType: TrackerType { Self.trackerType }
    var auth_url: URL { Self.auth_url }
    var name: String { Self.name }
    var icon: String { Self.icon }
    var publicUrl: String { Self.publicUrl }
    
    func _formatMangaUrl(id: String) -> URL { Self.formatMangaUrl(id: id) }
}

enum TrackerType: String, Codable {
    case anilist
    
    static var allTrackers: [Self] = [.anilist]
}

func getTracker(trackerType ty: TrackerType) -> any Tracker.Type {
    switch ty {
        case .anilist:
            return AnilistTracker.self
    }
}

enum ReadingStatus: Codable {
    case reading, completed, onHold, dropped, planToRead, rereading
}

struct TrackedUser: Codable {
    var username: String
    var description: String?
    var profileLink: String?
    var avatar: String?
}
