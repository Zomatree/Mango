//
//  Settings.swift
//  MangaApp
//
//  Created by Angelo on 18/11/2024.
//

import SwiftUI

struct Settings: View {
    @State var imageQuality: ImageQuality = decodeUserDefaults(forKey: "imageQuality", defaultingTo: .full)
    @State var ltr: Bool = decodeUserDefaults(forKey: "ltr", defaultingTo: false)
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Sources") {
                    SourcesSettings()
                }
                
                Section("Reader settings") {
                    Picker("Image Quality", selection: $imageQuality) {
                        Text("Full")
                            .tag(ImageQuality.full)
                        Text("Compressed")
                            .tag(ImageQuality.compressed)
                    }
                    .pickerStyle(.menu)
                    
                    Toggle("Left to right", isOn: $ltr)
                }
                .onChange(of: imageQuality) { oldValue, newValue in
                    try! writeUserDefaults(forKey: "imageQuality", with: newValue)
                }
                .onChange(of: ltr) { oldValue, newValue in
                    try! writeUserDefaults(forKey: "ltr", with: newValue)
                }
            }
            .navigationTitle("Settings")
        }
    }
}
