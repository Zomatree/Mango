//
//  Library.swift
//  MangaApp
//
//  Created by Angelo on 18/11/2024.
//

import SwiftUI
import ExyteGrid
import Collections

private struct LibraryDropDelegate: DropDelegate {
    var destination: Manga
    @Binding var mangas: OrderedDictionary<String, Manga>
    @Binding var draggedManga: Manga?
    
    func dropUpdated(info: DropInfo) -> DropProposal? {
        return DropProposal(operation: .move)
    }
    
    func dropEntered(info: DropInfo) {
        if let draggedManga {
            if let fromIndex = mangas.keys.firstIndex(of: draggedManga.id) {
                if let toIndex = mangas.keys.firstIndex(of: destination.id), fromIndex != toIndex {
                    withAnimation {
                        mangas.swapAt(fromIndex, toIndex)
                    }
                }
            }
            
        }
    }
    
    func performDrop(info: DropInfo) -> Bool {
        draggedManga = nil
        return true
    }
}

struct Library: View {
    @EnvironmentObject var settings: SettingValues
    @State var draggedManga: Manga? = nil
    
    var body: some View {
        Group {
            if settings.library.mangas.isEmpty {
                VStack(alignment: .center) {
                    Text("🙁")
                        .font(.title)
                    Text("Your library is empty")
                        .foregroundStyle(settings.theme.secondaryForeground)
                }
            } else {
                switch settings.mangaLayout {
                    case .grid:
                        LibraryGrid(draggedManga: $draggedManga)
                    case .list:
                        LibraryList(draggedManga: $draggedManga)
                }
            }
        }
        .navigationTitle("Library")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(settings.theme.background)
    }
}

struct LibraryGrid: View {
    @EnvironmentObject var settings: SettingValues
    @Binding var draggedManga: Manga?
    
    var body: some View {
        Grid(tracks: 3, spacing: 8) {
            ForEach(Array(settings.library.mangas.values)) { manga in
                NavigationLink {
                    MangaOverview(manga: manga)
                } label: {
                    LibraryEntry(manga: manga, draggedManga: $draggedManga)
                }
            }
        }
        .gridContentMode(.scroll)
        .gridPacking(.dense)
        .gridFlow(.rows)
        .padding(.horizontal, 8)
        .gridContentAlignment(.leading)
    }
}

struct LibraryList: View {
    @EnvironmentObject var settings: SettingValues
    @Binding var draggedManga: Manga?
    
    var body: some View {
        List {
            ForEach(Array(settings.library.mangas.values)) { manga in
                NavigationLink {
                    MangaOverview(manga: manga)
                } label: {
                    LibraryEntry(manga: manga, draggedManga: $draggedManga)
                }
            }
            .listRowSeparator(.hidden)
            .listRowBackground(Color.clear)
        }
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
    }
}

struct LibraryEntry: View {
    @EnvironmentObject var settings: SettingValues
    
    var manga: Manga
    
    @Binding var draggedManga: Manga?
    
    var body: some View {
        AwareMangaCover(manga: manga)
            .id(manga.id)
            .onDrag {
                Task {
                    withAnimation {
                        draggedManga = manga
                    }
                }
                return NSItemProvider()
            }
            .onDrop(of: [.text], delegate: LibraryDropDelegate(destination: manga, mangas: $settings.library.mangas.animation(), draggedManga: $draggedManga.animation()))
            .contextMenu {
                ShareLink(item: manga.webUrl) {
                    Label("Share", systemImage: "square.and.arrow.up")
                }
                
                Button(role: .destructive) {
                    settings.library.mangas.removeValue(forKey: manga.id)
                } label: {
                    Label("Remove from library", systemImage: "trash.fill")
                }
            }
    }
}
