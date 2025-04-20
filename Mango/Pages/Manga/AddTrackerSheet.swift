//
//  AddTrackerSheet.swift
//  Mango
//
//  Created by Angelo on 23/12/2024.
//

import SwiftUI
import Kingfisher

struct AddTrackerSheet: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var settings: SettingValues
    
    var provider: any Provider
    var manga: Manga
    
    @State var selectedTracker: (any Tracker)? = nil
    @State var trackerResults: [Manga] = []
    @State var search: String
    @State var error: String? = nil
    @State var loading: Bool = true
    
    init(provider: any Provider, manga: Manga) {
        self.provider = provider
        self.manga = manga
        self.search = manga.title["ja-ro"] ?? manga.title["ja"] ?? manga.title.values.first!
    }
    
    var body: some View {
        VStack {
            switch selectedTracker {
                case nil:
                    ForEach(TrackerType.allTrackers.filter(settings.linkedTrackers.isAuthorized(trackerType:)), id: \.self) { trackerType in
                        let tracker = getTracker(trackerType: trackerType)
                        
                        Button {
                            selectedTracker = settings.linkedTrackers.createTracker(trackerType: trackerType)
                        } label: {
                            HStack {
                                Image(tracker.icon)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)

                                Text(tracker.name)
                                
                                Spacer()
                                
                                Text("Add tracking")
                                    .foregroundStyle(settings.theme.accent)
                            }
                        }
                    }
                    .padding(.horizontal, 32)
                    .padding(.vertical, 16)
                    .presentationDetents([.medium])
                    
                case .some(let tracker):
                    ZStack {
                        if let error {
                            VStack {
                                Spacer()
                                HStack {
                                    Text(error)
                                        .foregroundStyle(settings.theme.secondaryForeground)
                                        .font(.title)
                                }
                                Spacer()
                            }
                        } else if loading {
                            VStack {
                                Spacer()
                                HStack {
                                    ProgressView()
                                        .progressViewStyle(CircularProgressViewStyle())
                                }
                                Spacer()
                            }
                        } else {
                            VStack(spacing: 0) {
                                TextField("Search", text: $search)
                                    .frame(maxWidth: .infinity)
                                    .padding()
//                                    .padding(.horizontal, 8)
//                                    .padding(.vertical, 12)
                                    .background(settings.theme.secondaryBackground)

                                List {
                                    ForEach(trackerResults) { trackerManga in
                                        Button {
                                            Task {
                                                let trackedValues = try! await tracker.getTrackedValues(id: trackerManga.id)
                                                settings.trackedMangas[manga.id] = TrackedManga(tracker: tracker.trackerType, manga: trackerManga, trackedValues: trackedValues)
                                                presentationMode.wrappedValue.dismiss()
                                            }
                                        } label: {
                                            VStack(alignment: .leading) {
                                                HStack(alignment: .top) {
                                                    MangaCoverImage(manga: trackerManga)
                                                        .frame(height: 128)
                                                    
                                                    VStack(alignment: .leading) {
                                                        LocalizedText(trackerManga.title)
                                                            .font(.title3)
                                                        
                                                        Text("Status ").bold() + Text(trackerManga.status.rawValue)
                                                    }
                                                }
                                                
                                                LocalizedText(trackerManga.description)
                                                    .lineLimit(4)
                                            }
                                        }
                                    }
                                    .listRowBackground(settings.theme.secondaryBackground)
                                }
                                .scrollContentBackground(.hidden)
                                .listStyle(.plain)
                            }
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        }
                    }
                    .task(id: search) {
                        do {
                            trackerResults = try await tracker.search(name: search)
                            loading = false
                        } catch let e {
                            loading = false
                            error = e.localizedDescription
                        }
                    }
                    .presentationDetents([.large])
            }
            
            Spacer()
        }
        .presentationBackground(settings.theme.background)
        .ignoresSafeArea(.all, edges: .bottom)
    }
}
