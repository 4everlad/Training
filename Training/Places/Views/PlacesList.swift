//
//  PlacesList.swift
//  Training
//
//  Created by Dmitry Bakulin on 06.07.2022.
//

import SwiftUI

struct PlacesList: View {
    
    @EnvironmentObject var placesViewModel: PlacesViewModel
    
    var body: some View {
        NavigationView {
            List(placesViewModel.places) { place in
                NavigationLink(tag: place.name, selection: $placesViewModel.placeChoice) {
                    PlaceScreen(place: place)
                } label: {
                    HStack {
                        place.image
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text(place.name)
                        
                        Spacer()
                    }
                }
                
            }
            .navigationTitle(placesViewModel.title)
        }
        
    }
}

struct PlacesList_Previews: PreviewProvider {
    static var previews: some View {
        PlacesList()
    }
}
