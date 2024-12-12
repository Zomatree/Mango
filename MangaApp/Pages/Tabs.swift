//
//  Tabs.swift
//  MangaApp
//
//  Created by Angelo on 18/11/2024.
//

import SwiftUI

struct Tabs: View {
    @EnvironmentObject var settings: SettingValues
    @State var selection: String = "Library"
    
    var body: some View {
        NavigationStack {
            TabView(selection: $selection) {
                Library()
                    .tabItem {
                        Label("Library", systemImage: "book.closed")
                    }
                    .tag("Library")
                
                Updates()
                    .tabItem {
                        Label("Updates", systemImage: "exclamationmark.circle.fill")
                    }
                    .tag("Updates")
                
                History()
                    .tabItem {
                        Label("History", systemImage: "clock.arrow.trianglehead.counterclockwise.rotate.90")
                    }
                    .tag("History")
                
                Browse()
                    .tabItem {
                        Label("Browse", systemImage: "magnifyingglass.circle")
                    }
                    .tag("Browse")
                
                Settings()
                    .tabItem {
                        Label("Settings", systemImage: "gearshape.fill")
                    }
                    .tag("Settings")
            }
            .background(settings.theme.background)
            .navigationTitle(selection)
        }
    }
}

#Preview {
    Tabs()
        .applyPreviewModifiers(settings: SettingValues())
}
