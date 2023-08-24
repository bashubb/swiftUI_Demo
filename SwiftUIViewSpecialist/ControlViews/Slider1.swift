//
//  Slider1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 14/07/2023.
//

import SwiftUI

struct Slider1: View {
    
    @State private var value = 50.0
    
    var body: some View {
        VStack{
            Text("The Value is \(value)")
            Slider(value: $value, in: 1...100, step: 25)
                .tint(.red)
                .background(Capsule().fill(Color.pink))
            
            Slider(value: $value, in: 0...123,
                   minimumValueLabel: Image(systemName: "0.circle"),
                   maximumValueLabel: Image(systemName: "textformat.123")){
                Text("Adjusting label")
            }
                   .font(.largeTitle)
            
        }
        .padding()
        
    }
}

struct Slider1_Previews: PreviewProvider {
    static var previews: some View {
        Slider1()
    }
}
