//
//  ShapesIntro.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 24/08/2023.
//

import SwiftUI

struct ShapesIntro: View {
    var body: some View {
        /* Shapes are push out viewes*/
        VStack {
            Text("Circural Shapes")
            Capsule()
                .frame(width: 50.0, height: 100.0)
            Circle()
                .fill(Color.green) //works only with shapes - colors, gradients
            Ellipse()
            Text("Rectangular Shapes")
            Rectangle()
            GeometryReader { geo in
                RoundedRectangle(cornerRadius: geo.size.height/2)
            }
            // to make roundedrectangle perfectly round you need to divide height by two and that's the corner radius of the rectangle
            // or
            RoundedRectangle(cornerRadius: .infinity)
            RoundedRectangle(cornerRadius: 25)
            RoundedRectangle(cornerSize: CGSize(width: 80, height: 20))
            
        }
        .foregroundColor(.blue) // changes everything shapes and texts
        .font(.title)
    }
        
}

struct ShapesIntro_Previews: PreviewProvider {
    static var previews: some View {
        ShapesIntro()
    }
}
