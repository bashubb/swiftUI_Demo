//
//  TextEditor1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 31/07/2023.
//

import SwiftUI

struct TextEditor1: View {
    
    @State private var text = "Enter text..."
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Button("Dismiss Keyboard") {
                hideKeyboard()
            }
            
            TextEditor(text: $text)
                .font(.title)
                .foregroundColor(.purple)
                .border(Color.gray, width: 2)
                .background(Color.gray)
                .padding()
            
        }
    }
}

extension View {
    
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct TextEditor1_Previews: PreviewProvider {
    static var previews: some View {
        TextEditor1()
    }
}
