//
//  ContentView.swift
//  FlipClock
//
//  Created by Justyn Henman on 25/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    var date: String = Date().formatted(date: .omitted,
                                      time: .shortened)
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "globe")
                .padding(.bottom)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(date)
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
