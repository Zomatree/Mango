//
//  Browse.swift
//  MangaApp
//
//  Created by Angelo on 18/11/2024.
//

import SwiftUI
import Kingfisher

struct Browse: View {
    @EnvironmentObject var settings: SettingValues
    
    var body: some View {
        NavigationStack {
            if settings.enabledSources.isEmpty {
                VStack {
                    Spacer()
                    
                    Text("No sources configured.")
                        .font(.headline)
                        .foregroundStyle(settings.theme.secondaryForeground)
                    
                    Spacer()
                }
            } else {
                List {
                    ForEach(settings.enabledSources, id: \.self) { source in
                        let provider = getProvider(sourceType: source)
                        
                        NavigationLink {
                            SearchSource(provider: provider)
                        } label: {
                            HStack {
                                Image(provider.icon)
                                
                                Text(provider.name)
                            }
                        }
                        .listRowBackground(settings.theme.secondaryBackground)
                    }
                }
                .scrollContentBackground(.hidden)
            }
        }
        .navigationTitle("Browse")
        .background(settings.theme.background)
    }
}
