//
//  Settings.swift
//  MangaApp
//
//  Created by Angelo on 18/11/2024.
//

import SwiftUI

struct Settings: View {
    @EnvironmentObject var settings: SettingValues
    
    var body: some View {
        NavigationStack {
            List {
                Section("Intergrations") {
                    NavigationLink("Sources") {
                        SourcesSettings()
                    }
                    
                    NavigationLink("Trackers") {
                        TrackerSettings()
                    }

                }
                .listRowBackground(settings.theme.secondaryBackground)
                
                NavigationLink("Theme") {
                    ThemeSettings()
                }
                .listRowBackground(settings.theme.secondaryBackground)
                
                Section("Reader settings") {
                    Picker("Image Quality", selection: $settings.imageQuality) {
                        Text("Full")
                            .tag(ImageQuality.full)
                        Text("Compressed")
                            .tag(ImageQuality.compressed)
                    }
                    .pickerStyle(.menu)
                    
                    Toggle("Left to right", isOn: $settings.ltr)
                }
                .listRowBackground(settings.theme.secondaryBackground)
            }
            .navigationTitle("Settings")
            .scrollContentBackground(.hidden)
            .background(settings.theme.background)
        }
    }
}
