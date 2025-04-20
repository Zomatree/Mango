//
//  Manga.swift
//  MangaApp
//
//  Created by Angelo on 27/11/2024.
//

import Foundation

enum Status: String, Hashable, Identifiable {
    case completed, ongoing, cancelled, hiatus, unreleased
    
    var id: Self { self }
}

enum Manga: Hashable, Codable {
    case mangadex(MangadexManga)
    case anilist(AnilistMedia)
    case myanimelist(MyAnimeListManga)
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
            case .myanimelist(let manga):
                return ["jp": manga.title]
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
            case .myanimelist(let manga):
                return manga.main_picture.medium
        }
    }
    
    var description: [String: String] {
        switch self {
            case .mangadex(let manga):
                return manga.attributes.description
            
            case .anilist(let manga):
                return ["en": manga.description ?? "No description"]
            case .myanimelist(let manga):
                return ["en": manga.synopsis ?? "No description"]
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
                        return .hiatus
                    case .notYetReleased:
                        return .unreleased
                    case .releasing:
                        return .ongoing
                    case .none:
                        return .unreleased
                }
            case .myanimelist(let manga):
                switch manga.status {
                    case .finished:
                        return .completed
                    case .currently_publishing:
                        return .ongoing
                    case .not_yet_published:
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
            case .myanimelist(let manga):
                return manga.genres.map(Tag.myanimelist)
        }
    }
    
    var chapters: Int {
        switch self {
            case .mangadex:
                return 0
            case .anilist(let manga):
                return manga.chapters ?? 0
            case .myanimelist(let manga):
                return manga.num_chapters
        }
    }
    
    var webUrl: URL {
        switch self {
            case .mangadex(let manga):
                URL(string: "https://mangadex.org/title/\(manga.id)")!
            case .anilist(let manga):
                URL(string: "https://anilist.co/anime/\(manga.id)")!
            case .myanimelist(let manga):
                URL(string: "https://myanimelist.net/manga/\(manga.id)")!
        }
    }
    
    var author: String? {
        switch self {
            case .mangadex(let manga):
                return manga.relationships.first(where: { $0.type == "author" })?.attributes?["name"]?.value as? String
            case .anilist(let manga):
                return manga.author
            case .myanimelist(let manga):
                guard let author = manga.authors.first(where: { $0.role == "Story" }) else { return nil }
                
                return "\(author.node.first_name) \(author.node.last_name)"
        }
    }
    
    var artist: String? {
        switch self {
            case .mangadex(let manga):
                return manga.relationships.first(where: { $0.type == "artist" })?.attributes?["name"]?.value as? String
            case .anilist(let manga):
                return manga.author
            case .myanimelist(let manga):
                guard let author = manga.authors.first(where: { $0.role == "Art" }) else { return nil }
                
                return "\(author.node.first_name) \(author.node.last_name)"
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
            case .myanimelist(let manga):
                return String(manga.id)
        }
    }
}
