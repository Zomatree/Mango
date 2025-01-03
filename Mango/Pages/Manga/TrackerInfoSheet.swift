//
//  TrackerInfoSheet.swift
//  Mango
//
//  Created by Angelo on 23/12/2024.
//

import SwiftUI



struct TrackerInfoSheet: View {
    enum EditingField {
        case status, chapter, score, startedAt, finishedAt
    }
    
    @Environment(\.openURL) var openURL
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var settings: SettingValues
    
    var manga: Manga
    @Binding var tracked: TrackedManga
    var tracker: any Tracker
    
    @State var confirmDelete: Bool = false
    @State var editing: EditingField? = nil
    @State var sheetHeight: CGFloat = .zero

    var body: some View {
        VStack {
            HStack(spacing: 16) {
                Button {
                    openURL(tracker._formatMangaUrl(id: tracked.manga.id))
                } label: {
                    Image(tracker.icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                }
                
                LocalizedText(tracked.manga.title)
                
                Spacer()
                
                Button {
                    confirmDelete.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(settings.theme.accent)
                        .frame(width: 16, height: 16)
                }
            }

            ZStack {
                switch editing {
                    case .status:
                        Picker("Status", selection: $tracked.trackedValues.status) {
                            Text("Reading")
                                .tag(ReadingStatus.reading as ReadingStatus?)
                            Text("Planning")
                                .tag(ReadingStatus.planToRead as ReadingStatus?)
                            Text("Completed")
                                .tag(ReadingStatus.completed as ReadingStatus?)
                            Text("Dropped")
                                .tag(ReadingStatus.dropped as ReadingStatus?)
                            Text("Paused")
                                .tag(ReadingStatus.onHold as ReadingStatus?)
                            Text("Rereading")
                                .tag(ReadingStatus.rereading as ReadingStatus?)
                        }
                        .onAppear { tracked.trackedValues.status = .reading }
                        .pickerStyle(.wheel)
                    case .chapter:
                        Picker("Chapter", selection: $tracked.trackedValues.progress) {
                            ForEach(0..<tracked.manga.chapters, id: \.self) { i in
                                Text("\(i)")
                                    .tag(i as Int?)
                            }
                        }
                        .onAppear { tracked.trackedValues.progress = 0 }
                        .pickerStyle(.wheel)
                    case .score:
                        Picker("Chapter", selection: $tracked.trackedValues.score) {
                            ForEach(0..<10) { i in
                                Text("\(i)")
                                    .tag(i as Int?)
                            }
                        }
                        .onAppear { tracked.trackedValues.score = 5 }
                        .pickerStyle(.wheel)
                    case .startedAt:
                        DatePicker("Started At", selection: Binding { tracked.trackedValues.startedAt ?? Date.now } set: { tracked.trackedValues.startedAt = $0 }, displayedComponents: .date)
                            .onAppear { tracked.trackedValues.startedAt = Date.now }
                            .datePickerStyle(.graphical)
                    case .finishedAt:
                        DatePicker("Finished At", selection: Binding { tracked.trackedValues.finishedAt ?? Date.now } set: { tracked.trackedValues.finishedAt = $0 }, displayedComponents: .date)
                            .onAppear { tracked.trackedValues.finishedAt = Date.now }
                            .datePickerStyle(.graphical)
                        
                    default:
                        VStack(spacing: 0) {
                            HStack(spacing: 0) {
                                Button {
                                    withAnimation {
                                        editing = .status
                                    }
                                } label: {
                                    ZStack {
                                        switch tracked.trackedValues.status {
                                            case .reading:
                                                Text("Reading")
                                            case .planToRead:
                                                Text("Planning")
                                            case .completed:
                                                Text("Completed")
                                            case .dropped:
                                                Text("Dropped")
                                            case .onHold:
                                                Text("Paused")
                                            case .rereading:
                                                Text("Rereading")
                                            default:
                                                Text("Status")
                                                    .foregroundStyle(settings.theme.secondaryForeground)
                                        }
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(8)
                                }
                                
                                Divider()
                                
                                Button {
                                    withAnimation {
                                        editing = .chapter
                                    }
                                } label: {
                                    Text("\(tracked.trackedValues.progress ?? 0) / 166")
                                        .frame(maxWidth: .infinity)
                                        .padding(8)
                                }
                                .foregroundStyle(tracked.trackedValues.progress != nil ? settings.theme.foreground : settings.theme.secondaryForeground)
                                
                                Divider()
                                
                                Button {
                                    withAnimation {
                                        editing = .score
                                    }
                                } label: {
                                    Text(tracked.trackedValues.score.map { String($0) } ?? "Score")
                                        .foregroundStyle(tracked.trackedValues.score != nil ? settings.theme.foreground : settings.theme.secondaryForeground)
                                        .frame(maxWidth: .infinity)
                                        .padding(8)
                                }
                            }
                            
                            Divider()
                            
                            HStack(spacing: 0) {
                                Button {
                                    withAnimation {
                                        editing = .startedAt
                                    }
                                } label: {
                                    ZStack {
                                        if let startedAt = tracked.trackedValues.startedAt {
                                            Text(startedAt, format: .dateTime.day(.twoDigits).month(.twoDigits).year(.twoDigits))
                                        } else {
                                            Text("Start Date")
                                                .foregroundStyle(settings.theme.secondaryForeground)
                                        }
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(8)
                                }
                                
                                Divider()
                                
                                Button {
                                    withAnimation {
                                        editing = .finishedAt
                                    }
                                } label: {
                                    ZStack {
                                        if let finishedAt = tracked.trackedValues.finishedAt {
                                            Text(finishedAt, format: .dateTime.day(.twoDigits).month(.twoDigits).year(.twoDigits))
                                        } else {
                                            Text("Finish Date")
                                                .foregroundStyle(settings.theme.secondaryForeground)
                                        }
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(8)
                                }
                            }
                        }
                        .buttonStyle(.plain)
                        .frame(width: 400, height: 128)
                        .background(RoundedRectangle(cornerRadius: 8).stroke(settings.theme.secondaryForeground))
                }
            }
            
            if let editing {
                HStack {
                    Button("Clear") {
                        switch editing {
                            case .status:
                                tracked.trackedValues.status = nil
                            case .chapter:
                                tracked.trackedValues.progress = nil
                            case .score:
                                tracked.trackedValues.score = nil
                            case .startedAt:
                                tracked.trackedValues.startedAt = nil
                            case .finishedAt:
                                tracked.trackedValues.finishedAt = nil
                        }
                        
                        withAnimation {
                            self.editing = nil
                        }
                    }
                    
                    Spacer()
                    
                    Button("Done") {
                        withAnimation {
                            self.editing = nil
                        }
                    }
                }
                .padding(.horizontal, 16)
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 16)
        .onChange(of: tracked.trackedValues, { oldValue, newValue in
            Task {
                try! await tracker.updateTrackedValues(id: tracked.manga.id, trackedValues: newValue)
            }
        })
        .overlay {
            GeometryReader { geo in
                Color.clear.preference(key: HeightPref.self, value: geo.size.height)
            }
        }
        .onPreferenceChange(HeightPref.self) { newHeight in
            withAnimation {
                sheetHeight = newHeight
            }
        }
        .presentationDetents([.height(sheetHeight)])
        .presentationBackground(settings.theme.background)
        .confirmationDialog("Remove tracking", isPresented: $confirmDelete) {
            Button("Remove tracking?", role: .destructive) {
                settings.trackedMangas.removeValue(forKey: manga.id)
                dismiss()
            }
        }
        .task {
            if let trackedManga = try? await tracker.getManga(id: manga.id) {
                tracked.manga = trackedManga
                settings.trackedMangas[manga.id]?.manga = trackedManga
            }
        }
    }
}

struct HeightPref: PreferenceKey {
    static let defaultValue: CGFloat = .zero
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
