//
//  Image1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 24/08/2023.
//

import SwiftUI

struct Image1: View {
    
    // its handy if you want to change size dynamicly depends on dynamic types variants
    @ScaledMetric private var size : CGFloat = 40
    
    var body: some View {
        VStack {
            HStack {
                Image("personDoesNotExist") // pull in view
                    .resizable() //changes the aspect ratio
    //                .scaledToFit() // scales to fit the image into the screen
                    .scaledToFill() // scales it up to fill the screen with height of a image
                    // .aspectRatio(.fill/.fit) works the same
                
                    .frame(width: size, height: size)
                .clipShape(Circle())
                Text("Roman")
            }
            
        }
        .font(.title)
    }
}

struct Image1_Previews: PreviewProvider {
    static var previews: some View {
        Image1()
    }
}
