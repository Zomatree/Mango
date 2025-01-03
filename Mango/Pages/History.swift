//
//  History.swift
//  MangaApp
//
//  Created by Angelo on 18/11/2024.
//

import SwiftUI

struct History: View {
    @EnvironmentObject var settings: SettingValues
    
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            
            VStack(alignment: .center) {
                Spacer()
                
                Text("Todo")
                
                Spacer()
            }
            
            Spacer()
        }
        .background(settings.theme.background)
    }
}
