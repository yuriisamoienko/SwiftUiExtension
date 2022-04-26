//
//  PreviewDeviceModifier.swift
//  SwiftUiExtension
//
//  Created by Yurii Samoienko on 26.04.2022.
//

import Foundation
import SwiftUI

/*
 Usage:
 
 ContentView()
     ...
     .preview(device: .AppleWatchSeries5_44mm)
 */

public extension PreviewDevice {
    
    // MARK: Public Properties
    
    static let AppleWatchSeries5_44mm = PreviewDevice("Apple Watch Series 5 - 44mm")
    static let AppleWatchSeries5_40mm = PreviewDevice("Apple Watch Series 5 - 40mm")
    static let iPhone8 = PreviewDevice("iPhone 8")
    
    // MARK: Public Functions
    
}

// I think separating of modifier function to Extentions folder is a bad idea
public extension View {
    
    // MARK: Public Functions
    
    // It specifies preview device and set display name equial to device name
    func preview(device: PreviewDevice) -> some View {
        modifier(PreviewDeviceModifier(device: device))
    }
    
}

// It specifies preview device and set display name equial to device name

public struct PreviewDeviceModifier: ViewModifier {
    
    // MARK: Public Properties
    
    var device: PreviewDevice
    
    // MARK: Public Functions
    
    public func body(content: Content) -> some View {
        content
            .previewDevice(device)
            .previewDisplayName(device.rawValue)
    }
}
