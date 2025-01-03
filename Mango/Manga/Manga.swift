//
//  Manga.swift
//  MangaApp
//
//  Created by Angelo on 27/11/2024.
//

import Foundation

enum Status: String, Hashable, Identifiable {
    case completed, ongoing, cancelled, haitus, unreleased
    
    var id: Self { self }
}

enum Manga: Hashable, Codable {
    case mangadex(MangadexManga)
    case anilist(AnilistMedia)
}


extension Manga {
    var title: [String: String] {
        switch self {
            case .mangadex(let manga):
                return manga.attributes.title
            case .anilist(let manga):
                var titles: [String: String] = [:]
                
                if let romanji = manga.title?.romaji {
                    titles["ja-ro"] = romanji
                }
                
                if let japanese = manga.title?.native {
                    titles["ja"] = japanese
                }
                
                if let english = manga.title?.english {
                    titles["en"] = english
                }
                
                return titles
        }
    }
    
    var coverArt: String? {
        switch self {
            case .mangadex(let manga):
                if let fileName = manga.relationships.first(where: { $0.type == "cover_art" })?.attributes?["fileName"]?.value as? String {
                    return "https://uploads.mangadex.org/covers/\(manga.id)/\(fileName)"
                }
                
                return nil
                
            case .anilist(let manga):
                return manga.coverImage
        }
    }
    
    var description: [String: String] {
        switch self {
            case .mangadex(let manga):
                return manga.attributes.description
            
            case .anilist(let manga):
                return ["en": manga.description ?? "No description"]
        }
    }
    
    var status: Status {
        switch self {
            case .mangadex(let manga):
                return Status(rawValue: manga.attributes.status.rawValue)!
            
            case .anilist(let manga):
                switch manga.status {
                    case .cancelled:
                        return .cancelled
                    case .finished:
                        return .completed
                    case .hiatus:
                        return .haitus
                    case .notYetReleased:
                        return .unreleased
                    case .releasing:
                        return .ongoing
                    case .none:
                        return .unreleased
                }
        }
    }
    
    var tags: [Tag] {
        switch self {
            case .mangadex(let manga):
                return manga.attributes.tags.map(Tag.mangadex)
            case .anilist:
                return []
        }
    }
    
    var chapters: Int {
        switch self {
            case .mangadex(let manga):
                return 0
            case .anilist(let manga):
                return manga.chapters ?? 0
        }
    }
    
    var webUrl: URL {
        switch self {
            case .mangadex(let manga):
                URL(string: "https://mangadex.org/title/\(manga.id)")!
            case .anilist(let manga):
                URL(string: "https://anilist.co/anime/\(manga.id)")!
        }
    }
}

extension Manga: Identifiable {
    var id: String {
        switch self {
            case .mangadex(let manga):
                return manga.id
            case .anilist(let manga):
                return String(manga.id)
        }
    }
}
