//
//  NothingModifier.swift
//  SwiftUiExtension
//
//  Created by Yurii Samoienko on 26.04.2022.
//

import SwiftUI

// I think separating of modifier function to Extentions folder is a bad idea
public extension View {
    
    // MARK: Public Functions
    
    // just do nothing, for conditional modifiers, for example: active ? .doNothing() : .hide()
    func doNothing() -> some View {
        modifier(NothingModifier())
    }
    
}

// It specifies preview device and set display name equial to device name

public struct NothingModifier: ViewModifier {
    
    // MARK: Public Functions
    
    public func body(content: Content) -> some View {
        content // do nothing
    }
}
