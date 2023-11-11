import SwiftUI
import Foundation

struct ClockView: View {
    
    @State private var hours: String = "..."
    @State private var minutes: String = "..."
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
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
                }
                .padding()
            }
            .navigationTitle("FlipClock")
            .onReceive(timer) { _ in
                let components = Calendar.current.dateComponents([.hour, .minute], from: Date())
                if let hour = components.hour, let minute = components.minute {
                    hours = String(format: "%02d", hour)
                    minutes = String(format: "%02d", minute)
                }
            }
        }
        .tabItem {
            Image(systemName: "deskclock.fill")
            Text("Home")
        }
    }
}

struct ClockView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
