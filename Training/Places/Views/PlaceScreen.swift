//
//  PlaceScreen.swift
//  Training
//
//  Created by Dmitry Bakulin on 11.07.2022.
//

import SwiftUI

struct PlaceScreen: View {
    
    var place: Place?
    
    var body: some View {
        if let place = place {
            ScrollView {
                VStack(alignment: .leading) {
                    place.image
                        .resizable()
                        .frame(width: 300, height: 300)
                    
                    Text(place.description)
                        .font(.title2)
                }
                .padding()
            }
            .navigationTitle(place.name)
        }
    }
}

struct PlaceScreen_Previews: PreviewProvider {
    static var previews: some View {
        PlaceScreen(place: nil)
    }
}
