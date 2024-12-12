//
//  Library.swift
//  MangaApp
//
//  Created by Angelo on 18/11/2024.
//

import SwiftUI
import ExyteGrid

struct Library: View {
    @EnvironmentObject var settings: SettingValues
    
    var body: some View {
        Group {
            if settings.library.mangas.isEmpty {
                VStack(alignment: .center) {
                    Text("🙁")
                        .font(.title)
                    Text("Your library is empty")
                        .foregroundStyle(settings.theme.secondaryForeground)
                }
            } else {
                Grid(tracks: 3, spacing: 8) {
                    ForEach(settings.library.mangas) { manga in
                        NavigationLink {
                            MangaOverview(manga: manga)
                        } label: {
                            MangaCover(manga: manga)
                        }
                    }
                }
                .gridContentMode(.scroll)
                .gridPacking(.dense)
                .gridFlow(.rows)
                .padding(.horizontal, 8)
                .gridContentAlignment(.leading)
            }
        }
        .navigationTitle("Library")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(settings.theme.background)
    }
}
