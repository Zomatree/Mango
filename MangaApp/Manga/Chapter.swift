//
//  Chapter.swift
//  MangaApp
//
//  Created by Angelo on 11/12/2024.
//

import Foundation

enum Chapter: Identifiable {
    case mangadex(MangadexChapter)
    
    var id: String {
        switch self {
            case .mangadex(let chapter):
                return chapter.id
        }
    }
    
    var chapter: String? {
        switch self {
            case .mangadex(let chapter):
                return chapter.attributes.chapter
        }
    }
    
    var title: String? {
        switch self {
            case .mangadex(let chapter):
                return chapter.attributes.title
        }
    }
    
    var publishAt: Date {
        switch self {
            case .mangadex(let chapter):
                parseMangadexTimestamp(string: chapter.attributes.publishAt)!
        }
    }
    
    var uploader: String? {
        switch self {
            case .mangadex(let chapter):
                return chapter.attributes.uploader
        }
    }
    
    var volume: String? {
        switch self {
            case .mangadex(let chapter):
                return chapter.attributes.volume
        }
    }
    
    var fullTitle: String {
        let vol = volume.map { "Vol.\($0) " }
        let ch = chapter.map { "Ch.\($0) " }
        let title = title.map { "\((vol != nil || ch != nil) && !$0.isEmpty ? "- " : "")\($0)" }

        return "\(vol ?? "")\(ch ?? "")\(title ?? "")"
    }
}
