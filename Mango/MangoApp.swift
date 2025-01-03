//
//  MangaAppApp.swift
//  MangaApp
//
//  Created by Angelo on 18/11/2024.
//

import SwiftUI

@main
struct MangoApp: App {
    var body: some Scene {
        WindowGroup {
            WrappingView()
        }
    }
}

struct WrappingView: View {
    @StateObject var settings = SettingValues()
    
    var body: some View {
        Tabs()
            .foregroundStyle(settings.theme.foreground)
            .background(settings.theme.background)
            .tint(settings.theme.accent)
            .environmentObject(settings)
    }
}
