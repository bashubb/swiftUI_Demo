//
//  Picker1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 10/07/2023.
//

import SwiftUI

struct Picker1: View {
    
    @State var selection = "roman"
    
    var stringArray = [ "maciek", "roman", "anna" , "zdzisiek"]
    
    var body: some View {
        VStack {
            Text("Hello, World!")
            Picker(selection: $selection, label: Text("Picker")) {
                ForEach(stringArray, id: \.self) {item in
                    HStack {
                        Image(systemName: "person.fill")
                            .frame(width: 50)
                            .foregroundColor(.blue)
                        Text(item).tag(item)
                            .foregroundColor(.green)
                        Spacer()
                        
                    }
                }
                
            }
            
            .background(RoundedRectangle(cornerRadius: 20).fill(.ultraThinMaterial))
            .pickerStyle(.wheel)
            .padding()
            
            Text(String(selection))
                .font(.largeTitle)
        }
        
    }
}

struct Picker1_Previews: PreviewProvider {
    static var previews: some View {
        Picker1()
    }
}
