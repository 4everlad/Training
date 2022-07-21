//
//  Survey.swift
//  Training
//
//  Created by Dmitry Bakulin on 06.07.2022.
//

import Foundation
import SwiftUI

struct Place: Identifiable {
    var id = UUID()
    
    let name: String
    let description: String
    let imageName: String
    
    var image: Image {
        Image(imageName)
    }
}
