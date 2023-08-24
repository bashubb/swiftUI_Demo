//
//  TextField1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 31/07/2023.
//

import SwiftUI

struct TextField1: View {
    
    @State private var text = ""
    var colorOfChoice = Color(#colorLiteral(red: 0.7517313361, green: 0.6389693022, blue: 0.2456830442, alpha: 1))
    var anotherColor = Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
    var thirdColor = Color(#colorLiteral(red: 0.7885289788, green: 0.427911669, blue: 0.6950779557, alpha: 1))
    
    var body: some View {
        VStack(spacing: 40) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $text)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $text)
                .padding()
                .background(Capsule().stroke(Color.red, lineWidth: 2.0))
                .background(Capsule().fill(colorOfChoice))
                .padding()
            
            
            HStack(spacing: 20) {
                
                Image(systemName: "person.circle")
                    .font(.title)
                    .foregroundColor(.secondary)
                
                TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $text)
                    
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 8).stroke(Color.red, lineWidth: 2.0))
            .background(RoundedRectangle(cornerRadius: 8).fill(Color("TextBackgroundColor")))
            .padding()
            
            TextField("new text field", text: $text)
            
                .padding()
                .background(Capsule().stroke(Color.black, lineWidth: 3))
                .background(Capsule()
                    .fill(thirdColor))
                .padding()
                
                
        }
       
    }
}

struct TextField1_Previews: PreviewProvider {
    static var previews: some View {
        TextField1()
    }
}
