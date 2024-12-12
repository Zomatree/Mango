//
//  Manga.swift
//  MangaApp
//
//  Created by Angelo on 27/11/2024.
//

// TODO

enum Status: String {
    case completed, ongoing, cancelled, haitus
}

enum Manga: Codable {
    case mangadex(MangadexManga)
}

extension Manga {
    var title: [String: String] {
        switch self {
            case .mangadex(let manga):
                return manga.attributes.title
        }
    }
    
    var coverArt: String? {
        switch self {
            case .mangadex(let manga):
                if let fileName = manga.relationships.first(where: { $0.type == "cover_art" })?.attributes?["fileName"]?.value as? String {
                    return "https://uploads.mangadex.org/covers/\(manga.id)/\(fileName)"
                }
                
                return nil
        }
    }
    
    var description: [String: String] {
        switch self {
            case .mangadex(let manga):
                return manga.attributes.description
        }
    }
    
    var status: Status {
        switch self {
            case .mangadex(let manga):
                Status(rawValue: manga.attributes.status.rawValue)!
        }
    }
    
    var tags: [Tag] {
        switch self {
            case .mangadex(let manga):
                return manga.attributes.tags.map(Tag.mangadex)
        }
    }
}

extension Manga: Identifiable {
    var id: String {
        switch self {
            case .mangadex(let manga):
                return manga.id
        }
    }
}
