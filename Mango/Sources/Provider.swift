//
//  Provider.swift
//  MangaApp
//
//  Created by Angelo on 27/11/2024.
//

import Alamofire
import Foundation

protocol Provider {
    static var providerType: ProviderType { get }
    static var name: String { get }
    static var icon: String { get }
    static var publicUrl: String { get }
    
    var session: Alamofire.Session { get set }
    
    init()

    func getManga(id: String) async throws -> Manga
    func search(filter: QueryFilterOptions) async throws -> [Manga]
    func getChapters(manga: String, limit: Int, offset: Int) async throws -> [Chapter]
    func getChapterImages(manga: String, chapter: String, quality: ImageQuality) async throws -> [URL]
}

extension Provider {
    var providerType: ProviderType { Self.providerType }
    var name: String { Self.name }
    var icon: String { Self.icon }
    var publicUrl: String { Self.publicUrl }
}

struct QueryFilterOptions: Equatable {
    enum Direction: String, Codable, Equatable {
        case asc, desc
    }
    
    var title: String?
    var limit: Int?
    var offset: Int?
    var status: [Status]?
    var order: [String: Direction]?
}

enum ImageQuality: Hashable, Codable {
    case full, compressed
}

enum ProviderType: String, Codable {
    case mangadex
    
    static var allProviders: [Self] = [.mangadex]
}

func getProvider(sourceType ty: ProviderType) -> any Provider.Type {
    switch ty {
        case .mangadex:
            return MangadexProvider.self
    }
}

func getProvider(manga: Manga) -> any Provider.Type {
    switch manga {
        case .mangadex:
            return MangadexProvider.self
        case .anilist:
            fatalError("manga came from tracker not provider")
    }
}
