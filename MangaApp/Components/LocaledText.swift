//
//  LocaledText.swift
//  MangaApp
//
//  Created by Angelo on 28/11/2024.
//

import SwiftUI

func localizeString(locale: String, mapping: [String: String]) -> String {
    // some sane-ish fallbacks
    
    return mapping[locale] ?? mapping["ja-ro"] ?? mapping["ja"] ?? mapping.values.first!
}

struct LocalizedText: View {
    @Environment(\.appLocale) var locale: String
    
    var mapping: [String: String]
    
    init(_ mapping: [String : String]) {
        self.mapping = mapping
    }
    
    var body: some View {
        let text = localizeString(locale: locale, mapping: mapping)
        Text((try? AttributedString(markdown: text, options: AttributedString.MarkdownParsingOptions(interpretedSyntax: .inlineOnlyPreservingWhitespace))) ?? AttributedString(text, attributes: AttributeContainer()))
    }
}
