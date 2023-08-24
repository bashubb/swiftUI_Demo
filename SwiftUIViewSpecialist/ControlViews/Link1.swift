//
//  Link1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 06/07/2023.
//

import SwiftUI

struct Link1: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Link(destination: URL(string: "https://google.com")! ) {
                HStack {
                    Image(systemName: "flame")
                    Text("google")
                }
                .foregroundColor(.white)
                .padding()
                .background(Capsule().shadow(radius: 5))
                
            }
            .accentColor(.green)
            
        }
        .font(.largeTitle)
        
    }
}

struct Link1_Previews: PreviewProvider {
    static var previews: some View {
        Link1()
    }
}
