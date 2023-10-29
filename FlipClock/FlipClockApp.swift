//
//  FlipClockApp.swift
//  FlipClock
//
//  Created by Justyn Henman on 25/10/2023.
//

import SwiftUI

@main
struct FlipClockApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.dark)
                .background(.black)
        }
        #if os(macOS)
        .windowStyle(.titleBar)
        .windowResizability(.contentMinSize)
        #endif
    }
}
