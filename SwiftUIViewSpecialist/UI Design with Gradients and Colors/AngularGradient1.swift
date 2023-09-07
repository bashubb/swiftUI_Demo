//
//  AngularGradient1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 07/09/2023.
//

import SwiftUI

struct AngularGradient1: View {
    
    let angularGradient = AngularGradient(gradient: Gradient(colors: [.yellow,.blue]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
    
    var body: some View {
        ZStack {
            VStack(spacing:40){
                Text("Angular Gradient")
                
                Button {
                    
                    
                } label: {
                    Text("Gradient")
                        .foregroundColor(.white)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 12)
                            .fill(angularGradient))
                }
                
                
                Button {
                    
                    
                } label: {
                    Text("Gradient")
                        .padding()
                        .background(Capsule()
                            .stroke(angularGradient, lineWidth: 5))
                }

            }
            .font(.title)
        }
    }
}

struct AngularGradient1_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradient1()
    }
}
