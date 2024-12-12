//
//  MangaReader.swift
//  MangaApp
//
//  Created by Angelo on 10/12/2024.
//

import SwiftUI
import Kingfisher
import SwiftUIPager
import Zoomable
import ProgressIndicatorView

enum PageType: Equatable, Hashable {
    case start
    case url(URL)
    case end
}

struct MangaChapterReader: View {
    @Environment(\.appLocale) var locale: String
    
    var provider: any Provider
    var manga: Manga
    var chapters: [Chapter]
    
    @State var currentChapter: Int
    @State var urls: [URL]? = nil
    @State var error: String? = nil
    @StateObject var currentPage: Page = .withIndex(1)
    @State var hideOverlays: Bool = true
    
    var quality: ImageQuality
    var ltr: Bool
    
    var chapter: Chapter { chapters[currentChapter] }
    
    init(provider: any Provider, manga: Manga, chapters: [Chapter], currentChapter: Int) {
        self.provider = provider
        self.manga = manga
        self.chapters = chapters
        self.currentChapter = currentChapter
        
        self.quality = decodeUserDefaults(forKey: "imageQuality", defaultingTo: .full)
        self.ltr = decodeUserDefaults(forKey: "ltr", defaultingTo: false)
    }
    
    func fetchImages() async {
        do {
            urls = try await provider.getChapterImages(manga: manga.id, chapter: chapter.id, quality: quality)
        } catch let err {
            error = err.localizedDescription
        }
    }
    
    var pages: [PageType] {
        var pages: [PageType] = [.start]
        
        if let urls {
            pages.append(contentsOf: urls.map(PageType.url))
        }
        
        pages.append(.end)
        
        return pages
    }
    
    var body: some View {
        ZStack {
            if let urls {
                ZStack(alignment: .bottom) {
                    Pager(page: currentPage, data: pages, id: \.self) { page in
                        HStack(alignment: .center) {
                            VStack(alignment: .leading, spacing: 32) {
                                Spacer()
                                
                                switch page {
                                    case .url(let url):
                                        KFImage(url)
                                            .placeholder {
                                                ProgressView()
                                                    .progressViewStyle(.circular)
                                            }
                                            .resizable()
                                            .scaledToFit()
                                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                                            .padding(.bottom, 16)
                                            .padding(.top, 64)
                                            .zoomable()
                                        
                                    case .start:
                                        if chapter.id != chapters.last!.id {
                                            let previous = chapters[currentChapter + 1]
                                            
                                            Button {
                                                currentChapter += 1
                                            } label: {
                                                VStack(alignment: .leading, spacing: 8) {
                                                    Text("Previous:")
                                                        .font(.title2)
                                                    
                                                    Text(previous.fullTitle)
                                                        .font(.title)
                                                }
                                            }
                                        } else {
                                            Text("There is no previous chapter")
                                                .font(.title2)
                                        }
                                        
                                        VStack(alignment: .leading, spacing: 8) {
                                            Text("Current:")
                                                .font(.title2)
                                            
                                            Text(chapter.fullTitle)
                                                .font(.title)
                                        }
                                    case .end:
                                        VStack(alignment: .leading, spacing: 8) {
                                            Text("Finished:")
                                                .font(.title2)
                                            
                                            Text(chapter.fullTitle)
                                                .font(.title)
                                        }

                                        if currentChapter != 0 {
                                            let next = chapters[currentChapter - 1]
                                            
                                            Button {
                                                currentChapter -= 1
                                            } label: {
                                                VStack(alignment: .leading, spacing: 8) {
                                                    Text("Next:")
                                                        .font(.title2)
                                                    
                                                    Text(next.fullTitle)
                                                        .font(.title)
                                                }
                                            }
                                        } else {
                                            Text("There is no next chapter")
                                                .font(.title2)
                                        }
                                }
                                
                                Spacer()
                            }
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .onTapGesture {
                            withAnimation(.easeInOut) {
                                hideOverlays.toggle()
                            }
                        }
                    }
                    .horizontal(ltr ? .endToStart : .startToEnd)
                    .ignoresSafeArea(.all)
                    
                    if !hideOverlays {
                        VStack(spacing: 16) {
                            HStack(alignment: .center) {
                                if ltr {
                                    Text("\(urls.count)")
                                        .frame(width: 32)
                                } else {
                                    Text("\(max(1, min(currentPage.index, urls.count)))")
                                        .frame(width: 32)
                                }
                                
                                DottedProgressBarView(
                                    progress: Binding {
                                        urls.count > 20 ? (currentPage.index - 1) / 2 : currentPage.index - 1
                                    } set: {
                                        if urls.count > 20 {
                                            currentPage.index = ($0 * 2) + 1
                                        } else {
                                            currentPage.index = $0 + 1
                                        }
                                    },
                                    numberOfItems: urls.count > 20 ? urls.count / 2 : urls.count,
                                    backgroundColor: .primary,
                                    foregroundColor: .accentColor
                                )
                                .environment(\.layoutDirection, ltr ? .rightToLeft : .leftToRight)
                                .flipsForRightToLeftLayoutDirection(true)
                                
                                if !ltr {
                                    Text("\(urls.count)")
                                        .frame(width: 32)
                                } else {
                                    Text("\(max(1, min(currentPage.index, urls.count)))")
                                        .frame(width: 32)
                                }
                            }
                            .padding(12)
                            .background(Capsule().fill(.gray.opacity(0.5)))
                            .padding(.horizontal, 32)

                            HStack {
                                Spacer()
                                
                                Button {
                                    // Bookmark
                                } label: {
                                    Image(systemName: "bookmark")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 24, height: 24)
                                }
                                
                                Spacer()
                                
                                Button {
                                    // Share
                                } label: {
                                    Image(systemName: "square.and.arrow.up")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 24, height: 24)
                                }
                                
                                Spacer()
                                
                                Button {
                                    // Rotate
                                } label: {
                                    Image(systemName: "rectangle.portrait.rotate")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 24, height: 24)
                                }
                                
                                Spacer()
                                
                                Button {
                                    // Settings
                                } label: {
                                    Image(systemName: "gear")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 24, height: 24)
                                }
                                
                                Spacer()
                            }
                            .padding(16)
                            .background(.gray.opacity(0.5))
                        }
                        .transition(.move(edge: .bottom).combined(with: .opacity))
                        .zIndex(2)

                    }
                }
            } else if let error {
                VStack(alignment: .center) {
                    Text(error)
                        .multilineTextAlignment(.center)
                }
            } else {
                ProgressView()
                    .progressViewStyle(.circular)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .task {
            await fetchImages()
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text(chapter.fullTitle)
                    .opacity(hideOverlays ? 0 : 1)
            }
        }
        .onChange(of: currentChapter, { oldValue, newValue in
            currentPage.index = 1
            urls = nil
            
            Task {
                await fetchImages()
            }
        })
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(hideOverlays)
        .toolbarBackground(hideOverlays ? .clear : .gray, for: .navigationBar)
    }
}
