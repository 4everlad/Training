//
//  TextField.swift
//  Training
//
//  Created by Dmitry Bakulin on 17.07.2022.
//

import Foundation
import SwiftUI
import UIKit

struct TextFieldRepresentable: UIViewRepresentable {
    
    @Binding var text: String
    
    func makeUIView(context: Context) -> UITextField {
        let textField = UITextField()
        textField.delegate = context.coordinator
        textField.attributedPlaceholder = NSAttributedString(string: "Enter Text")
        
        return textField
    }
    
    func updateUIView(_ uiView: UITextField, context: Context) {
        print("testing updateUIView")
        uiView.text = text
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(text: $text)
    }
    
    class Coordinator: NSObject, UITextFieldDelegate {
        
        @Binding var text: String
        
        init(text: Binding<String>) {
            self._text = text
        }
        
        func textFieldDidChangeSelection(_ textField: UITextField) {
            print("testing  textFieldDidChangeSelection")
            guard let text = textField.text else { return }
            self.text = text
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            print("testing  TextField Should Return")
            textField.resignFirstResponder()
            return true
        }
    }
}

