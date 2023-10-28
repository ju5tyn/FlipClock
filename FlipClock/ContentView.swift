//
//  ContentView.swift
//  FlipClock
//
//  Created by Justyn Henman on 25/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var hours: String = ""
    @State private var minutes: String = ""
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        Group() {
            VStack {
                Spacer()
                Text(hours)
                    .font(.custom("Helvetica", size: 200))
                    .fontWeight(.bold)
                Text(minutes)
                    .font(.custom("Helvetica", size: 200))
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
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
