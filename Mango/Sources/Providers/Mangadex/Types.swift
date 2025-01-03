//
//  Types.swift
//  MangaApp
//
//  Created by Angelo on 27/11/2024.
//

import AnyCodable

typealias MangadexLocalizedString = [String: String]

struct MangadexRelationship: Codable, Equatable, Hashable {
    enum Related: String, Codable {
        case monochrome, main_story, adapted_from, based_on, prequel, side_story, doujinshi, same_franchise, shared_universe, sequel, spin_off, alternate_story, alternate_version, preserialization, colored, serialization
    }
    var id: String
    var type: String
    var related: Related?
    var attributes: [String: AnyCodable]?
}

struct MangadexManga: Codable, Identifiable, Hashable {
    enum PublicationDemographic: String, Codable, Hashable {
        case shounen, shoujo, josei, seinen
    }
    
    enum Status: String, Codable, Hashable {
        case completed, ongoing, cancelled, hiatus
    }
    
    enum ContentRating: String, Codable, Hashable {
        case safe, suggestive, erotica, pornographic
    }
    
    struct Tag: Codable, Hashable {
        enum Group: String, Codable, Hashable {
            case content, format, genre, theme
        }
        
        struct Attributes: Codable, Hashable {
            var name: MangadexLocalizedString
            var description: MangadexLocalizedString
            var group: Group
            var version: Int
        }
        
        var id: String
        var attributes: Attributes
    }
    
    enum State: String, Codable, Hashable {
        case draft, submitted, published, rejected
    }
    
    struct Attributes: Codable, Hashable {
        var title: MangadexLocalizedString
        var altTitles: [MangadexLocalizedString]
        var description: MangadexLocalizedString
        var links: [String: String]?
        var originalLanguage: String
        var lastVolume: String?
        var lastChapter: String?
        var publicationDemographic: PublicationDemographic?
        var status: Status
        var year: Int?
        var contentRating: ContentRating
        var chapterNumbersResetOnNewVolume: Bool
        var availableTranslatedLanguages: [String?]  // keep finding null in it for some reason
        var latestUploadedChapter: String?
        var tags: [Tag]
        var state: State
        var version: Int
        var createdAt: String
        var updatedAt: String
    }
    
    var id: String
    var attributes: Attributes
    var relationships: [MangadexRelationship]
}

struct MangadexDataResponse<T: Decodable>: Decodable {
    var result: String
    var response: String
    var data: T
}

struct MangadexPageinatedResponse<T: Decodable>: Decodable {
    var result: String
    var response: String
    var data: T
    var limit: Int
    var offset: Int
    var total: Int
}

typealias MangadexSearchResponse = MangadexPageinatedResponse<[MangadexManga]>

struct MangadexChapter: Codable, Equatable {
    struct Attributes: Codable, Equatable {
        var title: String?
        var volume: String?
        var chapter: String?
        var pages: Int
        var translatedLanguage: String
        var uploader: String?
        var externalUrl: String?
        var version: Int
        var createdAt: String
        var updatedAt: String
        var publishAt: String
        var readableAt: String
    }
    
    var id: String
    var type: String

    var attributes: Attributes
    var relationships: [MangadexRelationship]
}

typealias MangadexMangaFeedResponse = MangadexPageinatedResponse<[MangadexChapter]>

struct MangadexAtHomeServerResponse: Decodable {
    struct Chapter: Decodable {
        var hash: String
        var data: [String]
        var dataSaver: [String]
    }
    
    var result: String
    var baseUrl: String
    var chapter: Chapter
}
