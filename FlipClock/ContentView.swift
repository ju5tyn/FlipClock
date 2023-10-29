//
//  ContentView.swift
//  FlipClock
//
//  Created by Justyn Henman on 25/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var hours: String = "..."
    @State private var minutes: String = "..."
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationStack {
            LazyVStack {
                HStack {
                    Group {
                        ClockElement(number: hours, padding: 2.5)
                        #if os(macOS)
                            .padding()
                        #endif
                        ClockElement(number: minutes, padding: 2.5)
                        #if os(macOS)
                            .padding()
                        #endif
                    }
                }.padding()
            }
            .onReceive(timer) { _ in
                let components = Calendar.current.dateComponents([.hour, .minute], from: Date())
                if let hour = components.hour, let minute = components.minute {
                    hours = String(format: "%02d", hour)
                    minutes = String(format: "%02d", minute)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
