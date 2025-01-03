//
//  TrackerSettings.swift
//  Mango
//
//  Created by Angelo on 17/12/2024.
//

import SwiftUI
import SwiftJWT
import Kingfisher

struct TrackerSettings: View {
    @EnvironmentObject var settings: SettingValues
    @Environment(\.openURL) private var openURL
    
    @State var trackerInfoSheet: (any Tracker)? = nil
    
    var body: some View {
        List {
            ForEach(TrackerType.allTrackers, id: \.self) { trackerType in
                let tracker = getTracker(trackerType: trackerType)
                
                Button {
                    if let tracker = settings.linkedTrackers.createTracker(trackerType: trackerType) {
                        trackerInfoSheet = tracker
                    } else {
                        openURL(tracker.auth_url)
                    }
                } label: {
                    HStack {
                        Image(tracker.icon)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        
                        Text(tracker.name)
                        
                        Spacer()

                        if settings.linkedTrackers.isAuthorized(trackerType: trackerType) {
                            Image(systemName: "checkmark")
                                .resizable()
                                .foregroundStyle(settings.theme.accent.color)
                                .scaledToFit()
                                .frame(width: 16, height: 16)
                        }
                        
                        
                    }
                }
            }
        }
        .sheet(isPresented: Binding { trackerInfoSheet != nil } set: { _ in trackerInfoSheet = nil }) {
            TrackerUserInfoSheet(tracker: trackerInfoSheet!)
        }
        .scrollContentBackground(.hidden)
        .background(settings.theme.background)
        .navigationTitle("Trackers")
        .onOpenURL { url in
            print(url)
            
            if url.scheme == "mangomanga", url.pathComponents[safe: 2] == "auth", let trackerType = TrackerType(rawValue: url.pathComponents[1]) {
                switch trackerType {
                    case .anilist:
                        var frags: [String.SubSequence: String.SubSequence] = [:]
                        
                        for part in url.fragment()!.split(separator: "&") {
                            let kv = part.split(separator: "=", maxSplits: 2)
                            frags[kv[0]] = kv[1]
                        }
                        
                        if let access_token = frags["access_token"], let expires_in = frags["expires_in"] {
                            let expires_at = Date.now.addingTimeInterval(Double(expires_in)!)
                            let decoder = JWTDecoder(jwtVerifier: .none)
                            let jwt = try! decoder.decode(JWT<AnilistJWTClaims>.self, fromString: String(access_token))
                            settings.linkedTrackers.anilist = AnilistTrackerAuth(token: String(access_token), userId: Int(jwt.claims.sub)!, expires_at: expires_at)
                        }
                }
            }
        }
    }
}

struct TrackerUserInfoSheet: View {
    @EnvironmentObject var settings: SettingValues
    
    var tracker: any Tracker
    @State var user: TrackedUser? = nil
    @State var error: String? = nil
    @State var unlink: Bool = false
    
    var body: some View {
        HStack {
            if let error {
                Text(error)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
            } else if let user {
                VStack {
                    HStack {
                        if let avatar = user.avatar {
                            KFImage(URL(string: avatar)!)
                                .resizable()
                                .frame(width: 32, height: 32)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                        
                        if let url = user.profileLink {
                            Link(destination: URL(string: url)!) {
                                Text(verbatim: user.username)
                            }
                        } else {
                            Text(verbatim: user.username)
                        }
                        
                        Spacer()
                        
                        Button {
                            unlink = true
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(settings.theme.accent)
                                .frame(width: 16, height: 16)
                        }
                    }
                    
                    if let description = user.description {
                        Text(verbatim: description)
                    }
                }
            } else {
                Spacer()
                
                ProgressView()
                    .progressViewStyle(.circular)
                
                Spacer()
            }
        }
        .task {
            do {
                user = try await tracker.getLinkedUser()
            } catch let e {
                error = e.localizedDescription
            }
        }
        .confirmationDialog("Unlink tracker", isPresented: $unlink) {
            Button("Unlink tracker?", role: .destructive) {
                settings.linkedTrackers.unlink(trackerType: tracker.trackerType)
                
                Task {
                    try! await tracker.unlink()
                }
            }
        }

        .padding(16)
        .presentationDetents([.medium])
        .presentationBackground(settings.theme.background)
    }
}
