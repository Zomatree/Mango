//
//  Utils.swift
//  MangaApp
//
//  Created by Angelo on 11/12/2024.
//

import Foundation

func parseMangadexTimestamp(string: String) -> Date? {
    let RFC3339DateFormatter = DateFormatter()
    RFC3339DateFormatter.locale = Locale(identifier: "en_US_POSIX")
    RFC3339DateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
    RFC3339DateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
    
    return RFC3339DateFormatter.date(from: string)
}
