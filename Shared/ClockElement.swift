//
//  ClockElement.swift
//  FlipClock
//
//  Created by Justyn Henman on 28/10/2023.
//

import SwiftUI

struct ClockElement: View {
    
    var number: Int
    
    var body: some View {
        Group {
            ZStack {
                LinearGradient(gradient:
                                Gradient(colors: [
                                    Color(red: 0.25, green: 0.25, blue: 0.25),
                                    Color(red: 0.05, green: 0.05, blue: 0.05)]), startPoint: .top, endPoint: .bottom)
                    .foregroundStyle(.gray)
                    .clipShape(.rect(cornerRadii: RectangleCornerRadii(topLeading: 10, bottomLeading: 10, bottomTrailing: 10, topTrailing: 10)))
                Text(String(number))
                    .font(.custom("Helvetica", size: 100))
                    .fontWeight(.bold)
                    .foregroundStyle(Color(red: 0.85, green: 0.85, blue: 0.85))
                Rectangle()
                    .fill(Color.black)
                    .frame(height: 2)
            }
            
        }
    }
}

