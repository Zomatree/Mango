//
//  SearchSource.swift
//  MangaApp
//
//  Created by Angelo on 27/11/2024.
//

import Foundation
import SwiftUI
import Alamofire
import Kingfisher
import ExyteGrid

struct SearchSource: View {
    @EnvironmentObject var settings: SettingValues
    
    var provider: any Provider
    
    init(provider: any Provider.Type) {
        self.provider = provider.init()
    }
    
    @State var searchText: String = ""
    @State var results: [Manga] = []
    @State var error: String? = nil
    
    func search(text: String) async {
        if text.isEmpty {
            await getPopular()
            
            return
        }
        
        do {
            results = try await provider.search(filter: QueryFilterOptions(title: searchText))
        } catch let e {
            error = e.localizedDescription
        }
    }
    
    func getPopular() async {
        if !searchText.isEmpty { return }
        
        do {
            results = try await provider.search(filter: QueryFilterOptions(order: ["followedCount": .desc]))
        } catch let e {
            error = e.localizedDescription
        }

    }
    
    var body: some View {
        Group {
            if let error {
                HStack {
                    Spacer()
                    
                    Text(verbatim: error)
                    
                    Spacer()
                }
            } else {
                Grid(tracks: 3, spacing: 8) {
                    ForEach(results) { manga in
                        NavigationLink {
                            MangaOverview(provider: provider, manga: manga)
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
        .navigationTitle(provider.name)
        .searchable(text: $searchText, placement: .automatic)
        .onChange(of: searchText, { oldValue, text in
            Task { await search(text: text) }
        })
        .task { await getPopular() }
        .background(settings.theme.background)
    }
}
