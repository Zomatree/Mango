//
//  ThemeSettings.swift
//  MangaApp
//
//  Created by Angelo on 12/12/2024.
//

import SwiftUI

struct ThemeColorPicker: View {
    @Environment(\.self) var environment
    
    var title: String
    @Binding var color: ThemeColor
    
    var body: some View {
        ColorPicker(selection: Binding {
            color.color
        } set: { new in
            withAnimation {
                color.set(with: new.resolve(in: environment))
            }
        }, label: {
            Text(title)
        })
    }
}

struct ThemeSettings: View {
    @EnvironmentObject var settings: SettingValues
    
    var body: some View {
        List {
            Section {
                ThemeColorPicker(title: "Accent", color: $settings.theme.accent)
                ThemeColorPicker(title: "Primary Background", color: $settings.theme.background)
                ThemeColorPicker(title: "Secondary Background", color: $settings.theme.secondaryBackground)
                ThemeColorPicker(title: "Primary Foreground", color: $settings.theme.foreground)
                ThemeColorPicker(title: "Secondary Foreground", color: $settings.theme.secondaryForeground)
            }
            .listRowBackground(settings.theme.secondaryBackground)
            .animation(.easeInOut, value: settings.theme)
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Reset") {
                    withAnimation {
                        settings.theme = Theme()
                    }
                }
                .foregroundStyle(settings.theme.accent)
            }
        }
        .navigationTitle("Theme")
        .scrollContentBackground(.hidden)
        .background(settings.theme.background)
        .animation(.easeInOut, value: settings.theme)
    }
}
