//
//  MangaCover.swift
//  MangaApp
//
//  Created by Angelo on 10/12/2024.
//

import SwiftUI
import Kingfisher

struct MangaCoverImage: View {
    enum CoverShape {
        case original, square
    }
    var manga: Manga
    
    var shape: CoverShape = .original
    
    var body: some View {
        if let icon = manga.coverArt, let iconUrl = URL(string: icon) {
            KFImage(iconUrl)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .clipped()
                .aspectRatio(shape == .original ? 1/sqrt(2) : 1, contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .contentShape(.contextMenuPreview, RoundedRectangle(cornerRadius: 8))
        }
    }
}

struct MangaCover: View {
    var manga: Manga
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            MangaCoverImage(manga: manga)
            
            LocalizedText(manga.title, markdown: false)
                .font(.footnote)
                .foregroundStyle(.white)
                .shadow(color: .black, radius: 1)
                .shadow(color: .black, radius: 1)
                .lineLimit(2)
                .padding(.horizontal, 4)
                .padding(.bottom, 4)
                .multilineTextAlignment(.leading)
        }
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
