//
//  SourcesSettings.swift
//  MangaApp
//
//  Created by Angelo on 18/11/2024.
//

import SwiftUI

struct SourcesSettings: View {
    @State var enabledSources: Set<ProviderType>
    
    init() {
        enabledSources = decodeUserDefaults(forKey: "enabledSources", defaultingTo: [])
    }
    
    var body: some View {
        List {
            ForEach([ProviderType.mangadex], id: \.self) { provider in
                HStack {
                    Toggle(isOn: Binding(
                        get: { enabledSources.contains(provider) },
                        set: {
                            if $0 {
                                enabledSources.insert(provider)
                            } else {
                                enabledSources.remove(provider)
                            }
                        })
                    ) {
                        Text(provider.rawValue.localizedCapitalized)
                    }
                }
            }
        }
        .navigationTitle("Sources")
        .onChange(of: enabledSources, { _, new in
            try! writeUserDefaults(forKey: "enabledSources", with: new)
        })
    }
}
