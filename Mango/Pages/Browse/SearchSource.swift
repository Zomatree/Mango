//
//  SearchSource.swift
//  MangaApp
//
//  Created by Angelo on 27/11/2024.
//

import Foundation
import SwiftUI
import Alamofire
import Kingfisher
import ExyteGrid

enum SearchToken: Identifiable, Hashable {
    case airingStatus(Status)
    
    var id: Self { self }
    var name: Text {
        let name: String
        let value: String
        
        switch self {
            case .airingStatus(let status):
                name = "Status"
                
                switch status {
                    case .completed:
                        value = "Completed"
                    case .ongoing:
                        value = "Ongoing"
                    case .cancelled:
                        value = "Cancelled"
                    case .haitus:
                        value = "Haitus"
                    case .unreleased:
                        value = "Unreleased"
                }
        }
        
        return Text("\(name): ").bold() + Text(value)
    }
}

struct SearchSource: View {
    @EnvironmentObject var settings: SettingValues
    
    var provider: any Provider
    
    init(provider: any Provider.Type) {
        self.provider = provider.init()
    }
    
    let suggestedTokens: [SearchToken] = [
        .airingStatus(.ongoing),
        .airingStatus(.completed)
    ]
    
    @State var results: [Manga]? = nil
    @State var error: String? = nil
    @State var foundAll: Bool = false
    @State var currentQueryFilter: QueryFilterOptions = QueryFilterOptions(limit: 10, order: ["followedCount": .desc])
    @State var searchTokens: [SearchToken] = []
    
    func runQuery(query: QueryFilterOptions, replace: Bool) async {
        do {
            print(query)
            let newResults = try await provider.search(filter: query)

            if newResults.count != query.limit {
                foundAll = true
            }
            
            withAnimation {
                if replace {
                    results = newResults
                } else {
                    results?.append(contentsOf: newResults)
                }
            }
        } catch let e {
            error = e.localizedDescription
        }
    }
    
    var body: some View {
        Group {
            if let error {
                VStack {
                    Spacer()
                    
                    Text(verbatim: error)
                        .foregroundStyle(settings.theme.secondaryForeground)
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .background(settings.theme.background)
            } else if let results {
                if results.isEmpty {
                    VStack(alignment: .center) {
                        Text("🙁")
                            .font(.title)
                        Text("No results found")
                            .foregroundStyle(settings.theme.secondaryForeground)
                    }
                } else {
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
                            ForEach(results) { manga in
                                NavigationLink {
                                    MangaOverview(provider: provider, manga: manga)
                                } label: {
                                    MangaCover(manga: manga)
                                }
                                .onAppear {
                                    if manga == results.last {
                                        currentQueryFilter.offset = results.count
                                    }
                                }
                            }
                        }
                        .padding(.horizontal, 8)
                        
                        if !foundAll {
                            ProgressView()
                                .progressViewStyle(.circular)
                                .frame(maxWidth: .infinity)
                        }
                    }
                }
            } else {
                ProgressView()
                    .progressViewStyle(.circular)
            }
        }
        .navigationTitle(provider.name)
        .searchable(text: Binding {
            currentQueryFilter.title ?? ""
        } set: {
            error = nil

            currentQueryFilter.title = $0.isEmpty ? nil : $0
            currentQueryFilter.offset = nil
        }, tokens: $searchTokens, suggestedTokens: .constant(suggestedTokens), placement: .navigationBarDrawer, prompt: Text("Search for manga")) { token in
            token.name
        }
        .task {
            if results == nil {
                await runQuery(query: currentQueryFilter, replace: true)
            }
        }
        .onChange(of: searchTokens, { _, tokens in
            currentQueryFilter.offset = nil
            currentQueryFilter.order = ["followedCount": .desc]
            currentQueryFilter.status = nil
            
            for token in tokens {
                switch token {
                    case .airingStatus(let status):
                        var statuses = currentQueryFilter.status ?? []
                        statuses.append(status)
                        currentQueryFilter.status = statuses
                }
            }
        })
        .onChange(of: currentQueryFilter) { oldValue, newValue in
            Task {
                await runQuery(query: newValue, replace: oldValue.title != newValue.title)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(settings.theme.background)
    }
}
