//
//  ShapesWithOtherViews.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 24/08/2023.
//

import SwiftUI

struct ShapesWithOtherViews: View {
    
    var colorBack = Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    
    var body: some View {
        VStack(spacing:40) {
            Text("Using Shapes in UI")
            
            VStack(spacing: 40) {
                Button(action: {}){
                    Text("Button")
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(Capsule().shadow(radius: 10, y:10))
                }
                Button(action: {}){
                    Text("Button")
                        .padding()
                        .padding(.horizontal)
                    //if you need a shadow OUTSIDE the button and you are using .stroke for background, you need another shape before, otherwise shadow would be outside and 'inside' of the button
                    // you can not aplly .fill and .stroke at the same time
                        .background(Capsule()
                            .fill(Color.white)
                            .shadow(radius: 10))
                        .background(Capsule()
                            .stroke(lineWidth: 4))
                }
            }
            .padding(24)
            .background(RoundedRectangle(cornerRadius: 15)
                .fill(colorBack))
            
            Image("personDoesNotExist")
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .padding()
        }
        .font(.title)
    }
}

struct ShapesWithOtherViewsPreviews: PreviewProvider {
    static var previews: some View {
        ShapesWithOtherViews()
    }
}
