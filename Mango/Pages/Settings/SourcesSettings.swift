//
//  SourcesSettings.swift
//  MangaApp
//
//  Created by Angelo on 18/11/2024.
//

import SwiftUI

struct SourcesSettings: View {
    @EnvironmentObject var settings: SettingValues
    
    var body: some View {
        List {
            ForEach(ProviderType.allProviders, id: \.self) { providerType in
                Toggle(isOn: Binding(
                    get: { settings.enabledSources.contains(providerType) },
                    set: {
                        if $0 {
                            settings.enabledSources.insert(providerType)
                        } else {
                            settings.enabledSources.remove(providerType)
                        }
                    })
                ) {
                    let provider = getProvider(sourceType: providerType)
                     
                    HStack {
                        Image(provider.icon)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)

                        Text(provider.name)
                    }
                }
            }
            .listRowBackground(settings.theme.secondaryBackground)
        }
        .scrollContentBackground(.hidden)
        .navigationTitle("Sources")
        .background(settings.theme.background)
    }
}
