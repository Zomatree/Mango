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
    @EnvironmentObject var settings: SettingValues
    @Environment(\.dismiss) var dismiss
    
    var provider: any Provider
    var manga: Manga
    @State var tracker: (any Tracker, Manga, TrackedManga.Values)?
    var chapters: [Chapter]
    
    @State var currentChapter: Int
    @State var urls: [URL]? = nil
    @State var error: String? = nil
    @State var syncError: String? = nil
    @StateObject var currentPage: Page = .withIndex(1)
    @State var hideOverlays: Bool = true
    @State var showSettings: Bool = false
    @State var currentImage: KFCrossPlatformImage? = nil
    @State var forceUpdate: Bool = false
    
    var chapter: Chapter { chapters[currentChapter] }
    
    init(provider: any Provider, manga: Manga, tracker: (any Tracker, Manga, TrackedManga.Values)?, chapters: [Chapter], currentChapter: Int) {
        self.provider = provider
        self.manga = manga
        self.tracker = tracker
        self.chapters = chapters
        self.currentChapter = currentChapter
    }
    
    func fetchImages() async {
        do {
            print(manga, chapter)
            let chapterUrls = try await provider.getChapterImages(manga: manga.id, chapter: chapter.id, quality: settings.imageQuality)
            
            switch settings.readStates.chapters[chapter.id] {
                case .page(let page):
                    currentPage.index = page
                case .read:
                    currentPage.index = chapterUrls.count
                default:
                    ()
            }
            
            urls = chapterUrls
            
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
    
    var pageTitle: String {
        "\(localizeString(locale: settings.appLocale, mapping: manga.title)), \(chapter.fullTitle) - Page \(currentPage.index)"
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
                                            .onSuccess { res in
                                                currentImage = res.image
                                            }
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
                        .onTapGesture(coordinateSpace: .global) { position in
                            let percentage = position.x / UIScreen.main.bounds.width
                            let nextPage = settings.ltr ? 1 : -1
                            
                            withAnimation(.easeInOut) {
                                if percentage <= (1/3) {
                                    currentPage.index += nextPage
                                    
                                } else if percentage >= (2/3) {
                                    currentPage.index -= nextPage
                                } else {
                                    hideOverlays.toggle()
                                }
                                
                                forceUpdate.toggle()
                            }
                        }
                    }
                    .onPageChanged { index in
                        if index == pages.count - 1 {
                            settings.readStates.chapters[chapter.id] = .read
                            
                            Task {
                                if var (tr, trackedManga, values) = tracker {
                                    values.progress = currentChapter
                                    
                                    do {
                                        tracker!.2 = try await tr.updateTrackedValues(id: trackedManga.id, trackedValues: values)
                                    } catch {
                                        syncError = error.localizedDescription
                                    }
                                }
                            }
                        } else if index != 0 {
                            settings.readStates.chapters[chapter.id] = .page(index)
                        }
                    }
                    .horizontal(settings.ltr ? .endToStart : .startToEnd)
                    .ignoresSafeArea(.all)
                    
                    if !hideOverlays {
                        VStack(spacing: 16) {
                            if settings.showPageNumbers {
                                HStack(alignment: .center) {
                                    if settings.ltr {
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
                                        backgroundColor: settings.theme.foreground.color,
                                        foregroundColor: settings.theme.accent.color
                                    )
                                    .environment(\.layoutDirection, settings.ltr ? .rightToLeft : .leftToRight)
                                    .flipsForRightToLeftLayoutDirection(true)
                                    
                                    if !settings.ltr {
                                        Text("\(urls.count)")
                                            .frame(width: 32)
                                    } else {
                                        Text("\(max(1, min(currentPage.index, urls.count)))")
                                            .frame(width: 32)
                                    }
                                }
                                .padding(12)
                                .background(Capsule().fill(settings.theme.secondaryBackground))
                                .padding(.horizontal, 32)
                                .opacity(settings.pageNumbersOpacity / 100)
                            }

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
                                
                                let image = Image(uiImage: currentImage ?? UIImage())

                                ShareLink(item: image, preview: SharePreview(pageTitle, image: image)) {
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
                                    showSettings.toggle()
                                } label: {
                                    Image(systemName: "gearshape")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 24, height: 24)
                                }
                                
                                Spacer()
                            }
                            .padding(16)
                            .background(settings.theme.secondaryBackground.opacity(0.2))
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
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text(chapter.fullTitle)
                    .opacity((currentPage.index != pages.count - 1 || currentPage.index == 0) && hideOverlays ? 0 : 1)
            }
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 8) {
                        Image(systemName: "chevron.left")
                        Text("Back")
                    }
                    .foregroundStyle(settings.theme.accent)
                    .opacity((currentPage.index != pages.count - 1 || currentPage.index == 0) && hideOverlays ? 0 : 1)

                }
            }
        }
        .onChange(of: currentChapter, { oldValue, newValue in
            currentPage.index = 1
            urls = nil
            
            Task {
                await fetchImages()
            }
        })
        //.onChange(of: forceUpdate) { _, _ in }
        .alert(
            "An Error occured tracking",
            isPresented: Binding { syncError != nil } set: { _ in syncError = nil },
            presenting: syncError
        ) { _ in
            Button("Ok") {
                syncError = nil
            }
        } message: {
            Text($0)
        }
        .sheet(isPresented: $showSettings) {
            List {
                Section("Reader Settings") {
                    Toggle("Left to right", isOn: $settings.ltr)
                    
                    Toggle("Show page numbers", isOn: $settings.showPageNumbers)
                    
                    HStack {
                        Text("Page number opacity")
                        Text("\(Int(settings.pageNumbersOpacity))%")
                        
                        Spacer()
                        
                        Slider(value: $settings.pageNumbersOpacity, in: 0...100, step: 5)
                    }
                }
                .listRowBackground(settings.theme.secondaryBackground)
            }
            .scrollContentBackground(.hidden)
            .presentationDetents([.medium])
            .presentationBackground(settings.theme.background)
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(hideOverlays ? .clear : settings.theme.secondaryBackground.color, for: .navigationBar)
        .background(settings.theme.background)
        .statusBarHidden(hideOverlays)
    }
}
