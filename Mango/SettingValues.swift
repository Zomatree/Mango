//
//  SettingValues.swift
//  MangaApp
//
//  Created by Angelo on 12/12/2024.
//

import Foundation
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

struct ReadStates: Codable {
    enum ReadState: Codable {
        case page(Int)
        case read
    }
    
    var chapters: [String: ReadState] = [:]
}

struct MangaLibrary: Codable {
    var mangas: [Manga] = []
    var chapters: [String: [Chapter]] = [:]
}

func parseHex(hex: String) -> (Double, Double, Double, Double) {
    let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
    var int: UInt64 = 0
    Scanner(string: hex).scanHexInt64(&int)
    let r, g, b, a: UInt64
    switch hex.count {
        case 3: // RGB (12-bit)
            (r, g, b, a) = ((int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17, 255)
        case 6: // RGB (24-bit)
            (r, g, b, a) = (int >> 16, int >> 8 & 0xFF, int & 0xFF, 255)
        case 8: // RGBA (32-bit)
            (r, g, b, a) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (r, g, b, a) = (1, 1, 1, 0)
    }
    
    return (
        Double(r) / 255,
        Double(g) / 255,
        Double(b) / 255,
        Double(a) / 255
    )
}

public struct ThemeColor: Equatable, ShapeStyle, View, Codable {
    public var r: Double
    public var g: Double
    public var b: Double
    public var a: Double
    
    public init(hex: String) {
        (r, g, b, a) = parseHex(hex: hex)
    }
    
    public mutating func set(with: Color.Resolved) {
        self.r = Double(with.red)
        
        if self.r == Double.infinity {
            self.r = 1.0
        }
        
        self.g = Double(with.green)
        
        if self.g == Double.infinity {
            self.g = 1.0
        }
        
        self.b = Double(with.blue)
        
        if self.b == Double.infinity {
            self.b = 1.0
        }
        
        self.a = Double(with.opacity)
        
        if self.a == Double.infinity {
            self.a = 1.0
        }
        
    }
    
    public func resolve(in environment: EnvironmentValues) -> Color.Resolved {
        color.resolve(in: environment)
    }
    
    public var color: Color {
        Color(red: r, green: g, blue: b, opacity: a)
    }
    
    public var uiColor: UIColor {
        UIColor(color)
    }
    
    public var hex: String {
        let r = String(Int(self.r * 255), radix: 16, uppercase: true)
        let g = String(Int(self.g * 255), radix: 16, uppercase: true)
        let b = String(Int(self.b * 255), radix: 16, uppercase: true)
        let a = String(Int(self.a * 255), radix: 16, uppercase: true)
        
        return "#\(r)\(g)\(b)\(a)"
    }
    
    public static var white: ThemeColor = ThemeColor(hex: "#FFFFFFFF")
    public static var black: ThemeColor = ThemeColor(hex: "#000000FF")
}

struct Theme: Codable, Equatable {
    var accent: ThemeColor = ThemeColor(hex: "E95678")
    
    var foreground: ThemeColor = ThemeColor(hex: "D5D8DA")
    var secondaryForeground: ThemeColor = ThemeColor(hex: "6C6F93")
    
    var background: ThemeColor = ThemeColor(hex: "111114")
    var secondaryBackground: ThemeColor = ThemeColor(hex: "313037")
}

struct Trackers: Codable {
    var anilist: AnilistTrackerAuth?
    
    func isAuthorized(trackerType ty: TrackerType) -> Bool {
        switch ty {
            case .anilist:
                return anilist != nil
        }
    }
    
    mutating func unlink(trackerType ty: TrackerType) {
        switch ty {
            case .anilist:
                anilist = nil
        }
    }
    
    func createTracker(trackerType ty: TrackerType) -> (any Tracker)? {
        switch ty {
            case .anilist:
                if let anilist {
                    return AnilistTracker(auth: anilist)
                }
        }
        
        return nil
    }
    
    var allLinkedTrackers: [any Tracker.Type] {
        TrackerType.allTrackers.compactMap { ty in
            if isAuthorized(trackerType: ty) {
                switch ty {
                    case .anilist:
                        return AnilistTracker.self
                }
            } else {
                return nil
            }
        }
    }
}

struct TrackedManga: Codable, Equatable {
    struct Values: Codable, Equatable {
        var status: ReadingStatus?
        var progress: Int?
        var score: Int?
        var startedAt: Date?
        var finishedAt: Date?
    }
    
    var tracker: TrackerType
    var manga: Manga
    var trackedValues: Values
}

class SettingValues: ObservableObject {
    @Published var appLocale: String {
        didSet {
            try! writeUserDefaults(forKey: "appLocale", with: appLocale)
        }
    }
    @Published var imageQuality: ImageQuality {
        didSet {
            try! writeUserDefaults(forKey: "imageQuality", with: imageQuality)
        }
    }
    @Published var ltr: Bool {
        didSet {
            try! writeUserDefaults(forKey: "ltr", with: ltr)
        }
    }
    @Published var readStates: ReadStates {
        didSet {
            try! writeUserDefaults(forKey: "readStates", with: readStates)
        }
    }
    @Published var library: MangaLibrary {
        didSet {
            try! writeUserDefaults(forKey: "library", with: library)
        }
    }
    @Published var theme: Theme {
        didSet {
            try! writeUserDefaults(forKey: "theme", with: theme)
        }
    }
    @Published var enabledSources: Set<ProviderType> {
        didSet {
            try! writeUserDefaults(forKey: "enabledSources", with: enabledSources)
        }
    }
    @Published var linkedTrackers: Trackers {
        didSet {
            try! writeUserDefaults(forKey: "linkedTrackers", with: linkedTrackers)
        }
    }
    @Published var trackedMangas: [String: TrackedManga] {
        didSet {
            try! writeUserDefaults(forKey: "trackedMangas", with: trackedMangas)
        }
    }
    
    init() {
        appLocale = decodeUserDefaults(forKey: "appLocale", defaultingTo: "en")
        imageQuality = decodeUserDefaults(forKey: "imageQuality", defaultingTo: .full)
        ltr = decodeUserDefaults(forKey: "ltr", defaultingTo: false)
        readStates = decodeUserDefaults(forKey: "readStates", defaultingTo: ReadStates())
        library = decodeUserDefaults(forKey: "library", defaultingTo: MangaLibrary())
        theme = Theme()//decodeUserDefaults(forKey: "theme", defaultingTo: Theme())
        enabledSources = decodeUserDefaults(forKey: "enabledSources", defaultingTo: [])
        linkedTrackers = decodeUserDefaults(forKey: "linkedTrackers", defaultingTo: Trackers())
        trackedMangas = decodeUserDefaults(forKey: "trackedMangas", defaultingTo: [:])
    }
}
