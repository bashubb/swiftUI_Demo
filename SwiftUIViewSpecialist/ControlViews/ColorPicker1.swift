//
//  ColorPicker1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 04/07/2023.
//

import SwiftUI

struct ColorPicker1: View {
    
    @State var color =  Color.green
    
    var body: some View {
        
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            ColorPicker("Pick a new color", selection: $color)
                .padding()
            RoundedRectangle(cornerRadius: 25)
                .fill(color)
        }
        
    }
}

struct ColorPicker1_Previews: PreviewProvider {
    static var previews: some View {
        ColorPicker1()
    }
}
