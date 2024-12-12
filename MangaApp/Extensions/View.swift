//
//  View.swift
//  MangaApp
//
//  Created by Angelo on 12/12/2024.
//

import SwiftUI

extension View {
    func applyPreviewModifiers(settings: SettingValues) -> some View {
        self.foregroundStyle(settings.theme.foreground)
            .background(settings.theme.background)
            .tint(settings.theme.accent)
            .environmentObject(settings)
    }
}
