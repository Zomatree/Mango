//
//  Tag.swift
//  MangaApp
//
//  Created by Angelo on 11/12/2024.
//

enum Tag: Identifiable {
    case mangadex(MangadexManga.Tag)
    
    var id: String {
        switch self {
            case .mangadex(let tag):
                return tag.id
        }
    }
    
    var title: [String: String] {
        switch self {
            case .mangadex(let tag):
                return tag.attributes.name
        }
    }
}
