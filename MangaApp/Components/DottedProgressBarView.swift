//
//  DottedProgressBarView.swift
//  MangaApp
//
//  Created by Angelo on 11/12/2024.
//

import SwiftUI
import Foundation

struct DottedProgressBarView: View {
    @Binding var progress: Int
    let numberOfItems: Int
    
    let backgroundColor: Color
    let foregroundColor: Color
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<numberOfItems, id: \.self) { index in
                DottedItemView(
                    backgroundColor: backgroundColor,
                    foregroundColor: foregroundColor,
                    needToFill: progress >= index
                )
                .contentShape(Rectangle())
                .onTapGesture {
                    progress = index
                }
                
                if index != numberOfItems - 1 {
                    Spacer()
                }
            }
        }
    }
}

struct DottedItemView: View {
    let backgroundColor: Color
    let foregroundColor: Color
    let needToFill: Bool
    
    var body: some View {
        ZStack(alignment: .leading) {
            Circle()
                .foregroundColor(backgroundColor)
            Circle()
                .opacity(needToFill ? 1 : 0)
                .foregroundStyle(foregroundColor)
                .animation(.easeIn, value: needToFill)
        }
    }
}
