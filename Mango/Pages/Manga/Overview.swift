//
//  Overview.swift
//  MangaApp
//
//  Created by Angelo on 28/11/2024.
//

import Foundation
import SwiftUI
import Kingfisher
import Flow
import Zoomable

struct MangaOverview: View {
    @EnvironmentObject var settings: SettingValues
    @Environment(\.openURL) var openURL
    
    var provider: any Provider
    @State var manga: Manga
    
    @State var chapters: [Chapter]? = nil
    @State var error: String? = nil
    @State var foundAllChapters: Bool = false
    @State var showTrackerInfoSheet: Bool = false
    @State var showAddTrackerSheet: Bool = false
    @State var showCoverFullscreen: Bool = false
    @State var coverImage: UIImage? = nil
    
    var tracker: (any Tracker, Manga, TrackedManga.Values)? {
        if let tracked = settings.trackedMangas[manga.id] {
            let tr = settings.linkedTrackers.createTracker(trackerType: tracked.tracker)!
            return (tr, tracked.manga, tracked.trackedValues)
        }
        
        return nil
    }
    
    init(provider: (any Provider)? = nil, manga: Manga) {
        self.provider = provider ?? getProvider(manga: manga).init()
        self.manga = manga
    }
    
    func getChapters() async {
        do {
            let chapters = try await provider.getChapters(manga: manga.id, limit: 100, offset: chapters?.count ?? 0)
            self.chapters = self.chapters ?? []
            self.chapters!.append(contentsOf: chapters)
            
            if chapters.count < 100 {
                foundAllChapters = true
            }
        } catch let err {
            error = err.localizedDescription
        }
    }
    
    func getCurrentChapter() -> Int? {
        for (i, chapter) in (chapters ?? []).enumerated() {
            if let readState = settings.readStates.chapters[chapter.id], case .page = readState {
                return i
            } else if let nextChapter = chapters?[safe: i + 1], let readState = settings.readStates.chapters[nextChapter.id], case .read = readState {
                return i
            }
        }
        
        if let chapters, !chapters.isEmpty {
            return chapters.endIndex - 1
        }
        
        return nil
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                VStack(alignment: .leading, spacing: 16) {
                    HStack(alignment: .top, spacing: 16) {
                        if let icon = manga.coverArt, let iconUrl = URL(string: icon) {
                            KFImage(iconUrl)
                                .resizable()
                                .clipped()
                                .aspectRatio(1/sqrt(2), contentMode: .fit)
                                .frame(width: 120)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .onTapGesture {
                                    showCoverFullscreen = true
                                }
                                .fullScreenCover(isPresented: $showCoverFullscreen) {
                                    KFImage(iconUrl)
                                        .resizable()
                                        .scaledToFit()
                                        .zoomable(outOfBoundsColor: settings.theme.background.color)
                                        .ignoresSafeArea(.all)
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                        .overlay(alignment: .topTrailing) {
                                            Button {
                                                showCoverFullscreen = false
                                            } label: {
                                                Image(systemName: "xmark")
                                                    .font(.headline)
                                            }
                                            .buttonStyle(.bordered)
                                            .clipShape(Circle())
                                            .tint(settings.theme.accent)
                                            .padding()
                                        }
                                }
                        }
                        
                        VStack(alignment: .leading) {
                            HStack(spacing: 8) {
                                if let author = manga.author {
                                    Image(systemName: "person")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 12, height: 12)
                                    
                                    Text(verbatim: author)
                                }
                            }
                            
                            HStack(spacing: 8) {
                                if let artist = manga.artist {
                                    Image(systemName: "paintbrush.pointed.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 12, height: 12)
                                    
                                    Text(verbatim: artist)
                                }
                            }

                            
                            HStack(spacing: 8) {
                                switch manga.status {
                                    case .completed:
                                        Image(systemName: "checkmark")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 12, height: 12)
                                        
                                        Text("Completed")
                                    case .ongoing:
                                        Image(systemName: "clock")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 12, height: 12)
                                        
                                        Text("Ongoing")
                                    case .cancelled:
                                        Image(systemName: "xmark")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 12, height: 12)
                                        
                                        Text("Cancelled")
                                    case .hiatus:
                                        Image(systemName: "clock.badge.questionmark")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 12, height: 12)
                                        
                                        Text("Hiatus")
                                    case .unreleased:
                                        Image(systemName: "questionmark.circle")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 12, height: 12)
                                        
                                        Text("Unreleased")
                                }
                                
                                Text(verbatim: "•")
                                
                                Text(provider.name)
                            }
                        }
                    }
                    
                    HStack {
                        let inLibrary = settings.library.mangas[manga.id] != nil

                        Button {
                            if inLibrary {
                                settings.library.mangas.removeValue(forKey: manga.id)
                            } else {
                                settings.library.mangas[manga.id] = manga
                            }
                        } label: {
                            VStack(alignment: .center, spacing: 8) {
                                Image(systemName: inLibrary ? "heart.fill" : "heart")
                                Text(inLibrary ? "In library" : "Add to\nlibrary")
                                    .multilineTextAlignment(.center)
                            }
                        }
                        .foregroundStyle(inLibrary ? settings.theme.accent : settings.theme.secondaryForeground)
                        .frame(alignment: .bottom)
                        
                        Spacer()
                        
                        let tracked = settings.trackedMangas[manga.id]
                        
                        Button {
                            if tracked != nil {
                                showTrackerInfoSheet.toggle()
                            } else {
                                showAddTrackerSheet.toggle()
                            }
                        } label: {
                            VStack(alignment: .center, spacing: 8) {
                                Image(systemName: tracked != nil ? "checkmark" : "arrow.trianglehead.2.counterclockwise")
                                Text(tracked != nil ? "Tracked" : "Tracking")
                            }
                        }
                        .foregroundStyle(tracked != nil ? settings.theme.accent : settings.theme.secondaryForeground)
                        
                        Spacer()
                        
                        Link(destination: manga.webUrl) {
                            VStack(alignment: .center, spacing: 8) {
                                Image(systemName: "safari")
                                Text("Webview")
                            }
                        }
                        .foregroundStyle(settings.theme.secondaryForeground)
                        
                        if let index = getCurrentChapter() {
                            Spacer()
                            
                            NavigationLink {
                                MangaChapterReader(provider: provider, manga: manga, tracker: tracker, chapters: chapters!, currentChapter: index)
                            } label: {
                                VStack(alignment: .center, spacing: 8) {
                                    Image(systemName: "play.fill")
                                    Text("Read")
                                }
                                .foregroundStyle(settings.theme.accent)
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                    
                    LocalizedText(manga.description)
                        .font(.callout)
                }
                
                HFlow(horizontalAlignment: .leading, verticalAlignment: .top, horizontalSpacing: 4, verticalSpacing: 8) {
                    ForEach(manga.tags) { tag in
                        LocalizedText(tag.title)
                            .font(.callout)
                            .padding(8)
                            .background(RoundedRectangle(cornerRadius: 8).stroke(settings.theme.foreground))
                    }
                }
                .frame(maxWidth: .infinity)
                
                if let chapters {
                    VStack(alignment: .leading) {
                        Text("\(chapters.count) chapters")
                            .font(.title2)
                            .bold()
                        
                        LazyVStack(spacing: 24) {
                            ForEach(Array(chapters.enumerated()), id: \.element.id) { (i, chapter) in
                                let readStatus = settings.readStates.chapters[chapter.id]
                                
                                let foreground = {
                                    switch readStatus {
                                        case .read:
                                            return settings.theme.secondaryForeground
                                        default:
                                            return settings.theme.foreground
                                    }
                                }()
                                
                                NavigationLink {
                                    MangaChapterReader(provider: provider, manga: manga, tracker: tracker, chapters: chapters, currentChapter: i)
                                } label: {
                                    HStack(spacing: 8) {
                                        VStack(alignment: .leading) {
                                            Text(chapter.fullTitle)
                                                .lineLimit(1)
                                            
                                            HStack(alignment: .center) {
                                                Text(chapter.publishAt.formatted(date: .numeric, time: .omitted))
                                                
                                                if case .page(let page) = readStatus {
                                                    Circle()
                                                        .frame(width: 4, height: 4)
                                                    
                                                    Text("Page: \(page)")
                                                        .foregroundStyle(settings.theme.secondaryForeground)
                                                }
                                                
                                                if let uploader = chapter.uploader {
                                                    Circle()
                                                        .frame(width: 4, height: 4)
                                                    
                                                    Text(verbatim: uploader)
                                                }
                                            }
                                            .font(.caption)
                                        }
                                        .foregroundStyle(foreground)
                                        
                                        Spacer()
                                        
                                        Button {
                                            // TODO downloadable chapters
                                        } label: {
                                            Image(systemName: "arrow.down.circle")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 24, height: 24)
                                                .foregroundStyle(settings.theme.secondaryForeground)
                                        }
                                    }
                                }
                                .buttonStyle(.plain)
                                .onAppear {
                                    if chapter == chapters.last {
                                        Task {
                                            await getChapters()
                                        }
                                    }
                                }

                            }
                        }
                    }
                } else if let error {
                    HStack(alignment: .center) {
                        Text(verbatim: error)
                            .font(.title)
                            .foregroundStyle(settings.theme.secondaryForeground)
                    }
                } else {
                    HStack(alignment: .center) {
                        ProgressView()
                            .progressViewStyle(.circular)
                    }
                }
            }
            .padding(.horizontal, 16)
            
            if !foundAllChapters, chapters != nil {
                HStack(alignment: .center) {
                    Spacer()
                    
                    ProgressView()
                        .progressViewStyle(.circular)
                    
                    Spacer()
                }
                .id("bottom")
                .foregroundStyle(settings.theme.secondaryForeground)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle(localizeString(locale: settings.appLocale, mapping: manga.title))
        .navigationBarTitleDisplayMode(.large)
        .refreshable {
            manga = try! await provider.getManga(id: manga.id)
            chapters = []
            await getChapters()
        }
        .onAppear {
            if let cachedChapters = settings.library.chapters[manga.id] {
                chapters = cachedChapters
            } else {
                Task {
                    await getChapters()
                }
            }
        }
        .onChange(of: chapters, { oldValue, newValue in
            settings.library.chapters[manga.id] = newValue
        })
        .onChange(of: manga, { oldValue, newValue in
            settings.library.mangas[manga.id] = newValue
        })
        .background(settings.theme.background)
        .sheet(isPresented: $showAddTrackerSheet) {
            AddTrackerSheet(provider: provider, manga: manga)
        }
        .sheet(isPresented: $showTrackerInfoSheet) {
            if let tracked = Binding($settings.trackedMangas[manga.id]) {
                TrackerInfoSheet(manga: manga, tracked: tracked, tracker: settings.linkedTrackers.createTracker(trackerType: tracked.wrappedValue.tracker)!)
            }
        }
    }
}
