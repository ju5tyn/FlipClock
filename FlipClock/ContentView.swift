import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            ClockView()
            SettingsView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

