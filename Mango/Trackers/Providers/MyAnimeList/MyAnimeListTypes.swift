//
//  Types.swift
//  Mango
//
//  Created by Angelo on 12/01/2025.
//

import Foundation

struct MyAnimeListUserInformation: Codable, Hashable, Equatable {
    var id: Int
    var name: String
    var picture: String?
}

struct MyAnimeListAccessTokenResponse: Codable, Hashable, Equatable {
    var expires_in: Int
    var access_token: String
    var refresh_token: String
}


struct MyAnimeListPagedResponse<T: Codable & Hashable & Equatable>: Codable, Hashable, Equatable {
    struct Paging: Codable, Hashable, Equatable {
        var previous: String?
        var next: String?
    }
    
    var data: [T]
    var paging: Paging
}

struct MyAnimeListSearchResponseData: Codable, Hashable, Equatable {
    var node: MyAnimeListManga
}

typealias MyAnimeListSearchResponse = MyAnimeListPagedResponse<MyAnimeListSearchResponseData>

struct MyAnimeListGetMangaListResponseData: Codable, Hashable, Equatable {
    var node: MyAnimeListManga
    var list_status: MyAnimeListListStatus
}

typealias MyAnimeListGetMangaListResponse = MyAnimeListPagedResponse<MyAnimeListGetMangaListResponseData>


struct MyAnimeListManga: Codable, Hashable, Equatable {
    struct Picture: Codable, Hashable, Equatable {
        var large: String?
        var medium: String?
    }
    
    struct AltTitles: Codable, Hashable, Equatable {
        var synonyms: [String]?
        var en: String?
        var ja: String?
    }
    
    struct Genre: Codable, Hashable, Equatable {
        var id: Int
        var name: String
    }
    
    enum MediaType: String, Codable, Hashable, Equatable {
        case unknown, manga, novel, one_shot, doujinshi, manhwa, manhua, oel, light_novel
    }
    
    enum Status: String, Codable, Hashable, Equatable {
        case finished, currently_publishing, not_yet_published
    }
    
    struct Author: Codable, Hashable, Equatable {
        struct Node: Codable, Hashable, Equatable {
            var id: Int
            var first_name: String?
            var last_name: String?
        }
        
        var role: String
        var node: Node
    }
    
    var id: Int
    var title: String
    var main_picture: Picture
    var alternative_titles: AltTitles
    var start_date: String?
    var end_date: String?
    var synopsis: String?
    var genres: [Genre]
    var created_at: String
    var updated_at: String
    var media_type: MediaType
    var status: Status
    var num_chapters: Int
    var authors: [Author]
}


struct MyAnimeListListStatus: Codable, Equatable, Hashable {
    enum Status: String, Codable, Equatable, Hashable {
        case reading, completed, on_hold, dropped, plan_to_read
    }
    
    var is_rereading: Bool?
    var status: Status?
    var score: Int?
    var num_volumes_read: Int?
    var num_chapters_read: Int?
    var num_times_reread: Int?
    var reread_value: Int?
    var tags: String?
    var comments: String?
    var start_date: String?
    var finish_date: String?
}

struct MyAnimeListGetMangaListParameters: Codable, Equatable, Hashable {
    var fields: String
    var limit: Int
    var offset: Int
}
