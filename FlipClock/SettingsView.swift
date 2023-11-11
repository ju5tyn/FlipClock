//
//  SettingsView.swift
//  FlipClock
//
//  Created by Justyn Henman on 11/11/2023.
//

import SwiftUI

struct SettingsView: View{
    
    var body: some View{
        NavigationStack{
            Text("Settings page")
            .navigationTitle("Settings")
        }
        .tabItem {
            Image(systemName: "gear.circle.fill")
            Text("Settings")
        }
        
    }
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
