//
//  Array.swift
//  Mango
//
//  Created by Angelo on 23/12/2024.
//

extension Collection {
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}
