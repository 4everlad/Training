//
//  ContentView.swift
//  Training
//
//  Created by Dmitry Bakulin on 28.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabSelection: Int = 0
    
    var body: some View {
        
        TabView(selection: $tabSelection) {
            FirstScreen(tabSelection: $tabSelection)
                .tag(0)
                .tabItem {
                    Label("First Screen", systemImage: "list.bullet.rectangle")
                }
            
            PlacesScreen()
                .tag(1)
                .tabItem {
                    Label("Places", systemImage: "tray.2.fill")
                }
            
            SettingsScreen()
                .tag(2)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
