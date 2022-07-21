//
//  SurveyFeedScreen.swift
//  Training
//
//  Created by Dmitry Bakulin on 28.06.2022.
//

import SwiftUI

struct FirstScreen: View {
    
    @EnvironmentObject var placesViewModel: PlacesViewModel
    @Binding var tabSelection: Int
    
    @State private var pickerChoice: String = "Lancaster"
    @State private var textField: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        VStack(alignment: .leading) {
                            TextFieldRepresentable(text: $textField)
                            Text("Text: \(textField)")
                        }
                    }.padding()
                    
                    Section {
                        VStack(alignment: .center) {
                            Picker("Places", selection: $pickerChoice) {
                                ForEach(placesViewModel.places) { place in
                                    Text(place.name)
                                        .tag(place.name)
                                }
                            }.pickerStyle(WheelPickerStyle())
                            
                            Button {
                                placesViewModel.placeChoice = pickerChoice
                                tabSelection = 1
                            } label: {
                                Text("Show place")
                                    .font(.system(size: 20))
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color.blue)
                                    .cornerRadius(8)
                            }
                        }
                    }
                }
            }
            .navigationTitle(Text("First Screen"))
        }.navigationViewStyle(.stack)
        
    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen(tabSelection: .constant(0))
    }
}
