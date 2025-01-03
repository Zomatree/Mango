//
//  Binding.swift
//  Mango
//
//  Created by Angelo on 02/01/2025.
//

import Foundation
import SwiftUI

extension Binding {
    func bindOr<T>(defaultTo defaultValue: T) -> Binding<T> where Value == T? {
        .init(
            get: { self.wrappedValue ?? defaultValue },
            set: { self.wrappedValue = $0 }
        )
    }
    
    func bindEmptyToNil() -> Binding<String> where Value == String? {
        .init(
            get: { self.wrappedValue ?? "" },
            set: { new in
                if new.isEmpty {
                    self.wrappedValue = nil
                } else {
                    self.wrappedValue = new
                }
            }
        )
    }
}
