//
//  ClockElement.swift
//  FlipClock
//
//  Created by Justyn Henman on 28/10/2023.
//

import SwiftUI

struct ClockElement: View {
    
    var number: String
    
    var padding: CGFloat = 2
    
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
                    .font(.custom("Helvetica", size: 500))
                    .fontWeight(.bold)
                    .foregroundStyle(Color(red: 0.85, green: 0.85, blue: 0.85))
                    .lineLimit(1)
                    .minimumScaleFactor(0.1)
                    .padding(.all, 10)
                    .shadow(radius: 2)
                Rectangle()
                    .fill(Color.black)
                    .opacity(0.5)
                    .frame(height: padding)
            }
            
        }
    }
}

