//
//  Tag.swift
//  MangaApp
//
//  Created by Angelo on 11/12/2024.
//

enum Tag: Identifiable {
    case mangadex(MangadexManga.Tag)
    case myanimelist(MyAnimeListManga.Genre)
    
    var id: String {
        switch self {
            case .mangadex(let tag):
                return tag.id
            case .myanimelist(let genre):
                return String(genre.id)
        }
    }
    
    var title: [String: String] {
        switch self {
            case .mangadex(let tag):
                return tag.attributes.name
            case .myanimelist(let genre):
                return ["en": genre.name]
        }
    }
}
