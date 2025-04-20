//
//  Mangadex.swift
//  MangaApp
//
//  Created by Angelo on 27/11/2024.
//

import Alamofire
import Foundation

let MANGADEX_BASE_URL = "https://api.mangadex.org"

struct MangadexSearchQuery: Encodable {
    var title: String?
    var limit: Int?
    var offset: Int?
    var order: [String: String]?
    
    var includes: [String]
}

struct MangadexProvider: Provider {
    static var providerType: ProviderType = .mangadex
    static var name: String = "MangaDex"
    static var icon: String = "MangadexIcon"
    static var publicUrl: String = "https://mangadex.org"
    
    var session: Alamofire.Session = Session()
    
    func getManga(id: String) async throws -> Manga {
        let request = session.request(URL(string: "\(MANGADEX_BASE_URL)/manga/\(id)")!, parameters: ["includes": ["cover_art", "author", "artist"]], encoding: URLEncoding(destination: .queryString))
        return .mangadex(try await request.serializingDecodable(MangadexDataResponse<MangadexManga>.self).value.data)
    }
    
    func search(filter: QueryFilterOptions) async throws -> [Manga] {
        var query: [String: any Sendable] = [
            "includes": ["cover_art", "author", "artist"]
        ]
        
        if let title = filter.title {
            query["title"] = title
        }
      
        if let limit = filter.limit {
            query["limit"] = limit
        }
        
        if let offset = filter.offset {
            query["offset"] = offset
        }
        
        if let order = filter.order {
            query["order"] = order.mapValues(\.rawValue)
        }
        
        if let status = filter.status {
            var statuses: [String] = []
            
            for stat in status {
                switch stat {
                    case .completed:
                        statuses.append("completed")
                    case .ongoing:
                        statuses.append("ongoing")
                    case .cancelled:
                        statuses.append("cancelled")
                    case .hiatus:
                        statuses.append("hiatus")
                    case .unreleased:
                        ()
                }
            }
            
            query["status"] = statuses
        }
        
        let request = session.request(URL(string: "\(MANGADEX_BASE_URL)/manga")!, parameters: query, encoding: URLEncoding.queryString)
        
        print(try request.convertible.asURLRequest())
//        let data = try await request.serializingData().value
//        print(String(data: data, encoding: .utf8))
//        return try! JSONDecoder().decode(MangadexSearchResponse.self, from: data).data.map(Manga.mangadex)
        return try await request.serializingDecodable(MangadexSearchResponse.self).value.data.map(Manga.mangadex)
    }
    
    func getChapters(manga: String, limit: Int, offset: Int) async throws -> [Chapter] {
        let request = session.request(URL(string: "\(MANGADEX_BASE_URL)/manga/\(manga)/feed?limit=\(limit)&offset=\(offset)&translatedLanguage[]=en&includeEmptyPages=0&includeFuturePublishAt=0&includeExternalUrl=0&order[volume]=desc&order[chapter]=desc&includes[]=scanlation_group")!)
        
        return try await request.serializingDecodable(MangadexMangaFeedResponse.self).value.data.map(Chapter.mangadex)
    }
    
    func getChapterImages(manga: String, chapter: String, quality: ImageQuality) async throws -> [URL] {
        let request = session.request(URL(string: "\(MANGADEX_BASE_URL)/at-home/server/\(chapter)")!)
        
        let response = try await request.serializingDecodable(MangadexAtHomeServerResponse.self).value
        
        let strings: [String]
        let urlPart: String
        
        switch quality {
            case .compressed:
                strings = response.chapter.dataSaver
                urlPart = "data-saver"
            case .full:
                strings = response.chapter.data
                urlPart = "data"
        }
        
        return strings.map { string in
            URL(string: "\(response.baseUrl)/\(urlPart)/\(response.chapter.hash)/\(string)")!
        }
    }
}
