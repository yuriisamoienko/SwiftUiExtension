//
//  ViewClosureModifier.swift
//  SwiftUiExtension
//
//  Created by Yurii Samoienko on 26.04.2022.
//

import SwiftUI

// I think separating of modifier function to Extentions folder is a bad idea
public extension View {
    
    // MARK: Public Functions
    
    func modifier(_ effect: ViewClosureModifier.Effect?) -> some View {
        modifier(ViewClosureModifier(effect))
    }

}

public struct ViewClosureModifier: ViewModifier {
    
    public typealias Effect = (Content) -> AnyView
    
    // MARK: Private Properties
    
    private let modifierClosure: Effect?
    
    // MARK: Public Functions
    
    public init(_ closure: Effect? = nil) {
        modifierClosure = closure
    }
    
    public func body(content: Content) -> some View {
        return modifierClosure?(content) ?? AnyView(content)
    }
}

/*
 Usage of ViewClosureModifier:
 struct CrossplatformView: View {
    var effect: DefaultModifier.Effect? // for platrform specific staff, to avoid preprocessor macroses
 
    var body: some View {
        View()
          .modifier(effect)
    }
 }
 
 struct MacOsView: View {[
     var body: some View {
         CrossplatformView(
            effect: { AnyView($0
                .frame(width: 200)
             )}
         )
     }
 }
 */


public struct NothingModifier: ViewModifier {

    public func body(content: Content) -> some View {
        content // do nothing
    }
}
