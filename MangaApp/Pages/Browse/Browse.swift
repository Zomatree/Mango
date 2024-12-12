//
//  Browse.swift
//  MangaApp
//
//  Created by Angelo on 18/11/2024.
//

import SwiftUI
import Kingfisher

struct Browse: View {
    @State var enabledSources: [ProviderType]
    
    init() {
        enabledSources = decodeUserDefaults(forKey: "enabledSources", defaultingTo: [])
    }
    
    var body: some View {
        NavigationStack {
            if enabledSources.isEmpty {
                VStack {
                    Spacer()
                    
                    Text("No sources configured.")
                        .font(.headline)
                        .foregroundStyle(.secondary)
                    
                    Spacer()
                }
            } else {
                List {
                    ForEach(enabledSources, id: \.self) { source in
                        let provider = getProvider(sourceType: source)
                        
                        NavigationLink {
                            SearchSource(provider: provider)
                        } label: {
                            HStack {
                                Image(provider.icon)
                                
                                Text(provider.name)
                            }
                        }
                    }
                }
            }
        }
        .navigationTitle("Browse")
    }
}
