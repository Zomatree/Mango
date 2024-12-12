//
//  MangaAppApp.swift
//  MangaApp
//
//  Created by Angelo on 18/11/2024.
//

import SwiftUI

func decodeUserDefaults<T: Decodable>(forKey key: String, withDecoder decoder: JSONDecoder = JSONDecoder()) throws -> T? {
    if let value = UserDefaults.standard.data(forKey: key) {
        return try decoder.decode(T.self, from: value)
    } else {
        return nil
    }
}

func decodeUserDefaults<T: Decodable>(forKey key: String, withDecoder decoder: JSONDecoder = JSONDecoder(), defaultingTo def: T) -> T {
    return (try? decodeUserDefaults(forKey: key, withDecoder: decoder)) ?? def
}

func writeUserDefaults<T: Encodable>(forKey key: String, with value: T, withEncoder encoder: JSONEncoder = JSONEncoder()) throws {
    let data = try encoder.encode(value)
    UserDefaults.standard.set(data, forKey: key)
}

@main
struct MangaAppApp: App {
    var body: some Scene {
        WindowGroup {
            Tabs()
        }
    }
}
