//
//  ViewExtension.swift
//  SwiftUiExtension
//
//  Created by Yurii Samoienko on 26.04.2022.
//

import SwiftUI

public extension View {
    
    /// Applies the given transform if the given condition evaluates to `true`.
    /// - Parameters:
    ///   - condition: The condition to evaluate.
    ///   - transform: The transform to apply to the source `View`.
    /// - Returns: Either the original `View` or the modified `View` if the condition is `true`.
    /*
     Usage example:
     ContentView()
         .if(someCondition) { $0
             .frame(minWidth: 300)
         }
     */
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
    
}
