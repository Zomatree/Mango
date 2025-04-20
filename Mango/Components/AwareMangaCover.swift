//
//  AwareMangaCover.swift
//  Mango
//
//  Created by Angelo on 11/01/2025.
//

import SwiftUI


struct AwareMangaCover: View {
    @EnvironmentObject var settings: SettingValues
    
    var manga: Manga
    
    var body: some View {
        switch settings.mangaLayout {
            case .grid:
                MangaCover(manga: manga)
            case .list:
                HStack(spacing: 16) {
                    MangaCoverImage(manga: manga, shape: .square)
                        .frame(width: 40, height: 40)
                    LocalizedText(manga.title)
                        .lineLimit(1)
                }
        }

    }
}
