//
//  SettingsScreen.swift
//  Training
//
//  Created by Dmitry Bakulin on 13.07.2022.
//

import SwiftUI

struct SettingsScreen: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        NavigationView {
            Text("Settings Screen")
                .navigationTitle("Settings")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            showModal.toggle()
                        } label: {
                            Image(systemName: "person.crop.circle").imageScale(.large)
                        }.sheet(isPresented: $showModal) {
                            ProfileScreen()
                        }
                    }
                }
        }
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
