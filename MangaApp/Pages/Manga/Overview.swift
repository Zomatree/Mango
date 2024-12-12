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

struct MangaOverview: View {
    @EnvironmentObject var settings: SettingValues
    
    var provider: any Provider
    var manga: Manga
    
    @State var chapters: [Chapter]? = nil
    @State var error: String? = nil
    @State var foundAllChapters: Bool = false
    
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
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                VStack(spacing: 16) {
                    VStack(alignment: .leading, spacing: 16) {
                        HStack(alignment: .top) {
                            if let icon = manga.coverArt, let iconUrl = URL(string: icon) {
                                KFImage(iconUrl)
                                    .resizable()
                                    .clipped()
                                    .aspectRatio(1/sqrt(2), contentMode: .fit)
                                    .frame(width: 120)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                            }
                            
                            VStack(alignment: .leading) {
                                HStack(spacing: 4) {
                                    switch manga.status {
                                        case .completed:
                                            Image(systemName: "checkmark")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                            
                                            Text("Completed")
                                        case .ongoing:
                                            Image(systemName: "clock")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                            
                                            Text("Ongoing")
                                        case .cancelled:
                                            Image(systemName: "xmark")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                            
                                            Text("Cancelled")
                                        case .haitus:
                                            Image(systemName: "clock.badge.questionmark")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                            
                                            Text("Haitus")
                                    }
                                    
                                    Text(verbatim: "•")
                                    
                                    Text(provider.name)
                                }
                            }
                        }
                        
                        let inLibrary = settings.library.mangas.contains(where: { $0.id == manga.id })
                        
                        HStack {
                            Button(
                                inLibrary ? "Remove from library" : "Add to library",
                                systemImage: inLibrary ? "heart.fill" : "heart"
                            ) {
                                if inLibrary {
                                    settings.library.mangas.removeAll { m in
                                        m.id == manga.id
                                    }
                                } else {
                                    settings.library.mangas.append(manga)
                                }
                            }
                        }
                        .foregroundStyle(settings.theme.accent)
                        
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
                            
                            LazyVStack(spacing: 16) {
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
                                        MangaChapterReader(provider: provider, manga: manga, chapters: chapters, currentChapter: i)
                                    } label: {
                                        HStack(spacing: 8) {
                                            VStack(alignment: .leading) {
                                                Text(chapter.fullTitle)
                                                    .lineLimit(1)
                                                
                                                HStack(alignment: .center) {
                                                    Text(chapter.publishAt.formatted(date: .numeric, time: .omitted))
                                                    
                                                    if let uploader = chapter.uploader {
                                                        Circle()
                                                            .frame(width: 4, height: 4)
                                                        
                                                        Text(verbatim: uploader)
                                                    }
                                                    
                                                    if case .page(let page) = readStatus {
                                                        Circle()
                                                            .frame(width: 4, height: 4)
                                                        
                                                        Text("Page: \(page)")
                                                            .foregroundStyle(settings.theme.secondaryForeground)
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
                    .task(id: chapters?.count) {
                        await getChapters()
                    }
                }
            }
            
            NavigationLink {
                
            } label: {
                HStack(spacing: 8) {
                    Image(systemName: "play.fill")
                    
                    Text("Read")
                }
                .foregroundStyle(.white)
                .padding()
                .background(settings.theme.accent)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(.trailing, 16)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle(localizeString(locale: settings.appLocale, mapping: manga.title))
        .navigationBarTitleDisplayMode(.large)
        .refreshable {
            Task { await getChapters() }
        }
        .onAppear {
            if let cachedChapters = settings.library.chapters[manga.id] {
                chapters = cachedChapters
            } else {
                Task { await getChapters() }
            }
        }
        .onChange(of: chapters, { oldValue, newValue in
            settings.library.chapters[manga.id] = newValue
        })
        .background(settings.theme.background)
    }
}
