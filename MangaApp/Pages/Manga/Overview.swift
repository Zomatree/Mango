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
    @Environment(\.appLocale) var locale: String
    
    var provider: any Provider
    var manga: Manga
    
    @State var inLibrary: Bool {
        didSet {
            var library: [Manga] = decodeUserDefaults(forKey: "library", defaultingTo: [])

            if inLibrary {
                library.append(manga)
            } else {
                library.removeAll { $0.id == manga.id }
            }
            
            try! writeUserDefaults(forKey: "library", with: library)
        }
    }
    
    @State var chapters: [Chapter]? = nil
    @State var error: String? = nil
    @State var foundAllChapters: Bool = false
    
    init(provider: (any Provider)? = nil, manga: Manga) {
        self.provider = provider ?? getProvider(manga: manga).init()
        self.manga = manga
        
        let library: [Manga] = decodeUserDefaults(forKey: "library", defaultingTo: [])
        inLibrary = library.contains(where: { $0.id == manga.id })
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
                        
                        HStack {
                            Button(
                                inLibrary ? "Remove from library" : "Add to library",
                                systemImage: inLibrary ? "heart.fill" : "heart"
                            ) {
                                inLibrary.toggle()
                            }
                        }
                        
                        LocalizedText(manga.description)
                            .font(.callout)
                    }
                    
                    HFlow(horizontalAlignment: .leading, verticalAlignment: .top, horizontalSpacing: 4, verticalSpacing: 8) {
                        ForEach(manga.tags) { tag in
                            LocalizedText(tag.title)
                                .font(.callout)
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 8).stroke(Color.primary))
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
                                    NavigationLink {
                                        MangaChapterReader(provider: provider, manga: manga, chapters: chapters, currentChapter: i)
                                    } label: {
                                        HStack(spacing: 8) {
                                            VStack(alignment: .leading) {
                                                Text(chapter.fullTitle)
                                                    .lineLimit(1)
                                                    .foregroundStyle(Color.primary)
                                                
                                                HStack(alignment: .center) {
                                                    Text(chapter.publishAt.formatted(date: .numeric, time: .omitted))
                                                    
                                                    if let uploader = chapter.uploader {
                                                        Circle()
                                                            .frame(width: 4, height: 4)
                                                        
                                                        Text(verbatim: uploader)
                                                    }
                                                }
                                                .font(.caption)
                                                .foregroundStyle(Color.secondary)
                                            }
                                            
                                            Spacer()
                                            
                                            Button {
                                                // TODO downloadable chapters
                                            } label: {
                                                Image(systemName: "arrow.down.circle")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 24, height: 24)
                                                    .foregroundStyle(Color.secondary)
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
                                .foregroundStyle(.secondary)
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
                    .foregroundStyle(.secondary)
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
                .background(Color.accentColor)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(.trailing, 16)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle(localizeString(locale: locale, mapping: manga.title))
        .navigationBarTitleDisplayMode(.large)
        .task { await getChapters() }
    }
}
