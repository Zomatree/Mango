//
//  MangaCover.swift
//  MangaApp
//
//  Created by Angelo on 10/12/2024.
//

import SwiftUI
import Kingfisher

struct MangaCover: View {
    var manga: Manga
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            if let icon = manga.coverArt, let iconUrl = URL(string: icon) {
                KFImage(iconUrl)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .clipped()
                    .aspectRatio(1/sqrt(2), contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            
            LocalizedText(manga.title)
                .font(.footnote)
                .foregroundStyle(.white)
                .shadow(color: .black, radius: 1)
                .shadow(color: .black, radius: 1)
                .lineLimit(2)
                .padding(.horizontal, 4)
                .padding(.bottom, 4)
                .multilineTextAlignment(.leading)
        }
    }
}
