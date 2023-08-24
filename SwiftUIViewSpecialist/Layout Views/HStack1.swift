//
//  HStack1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 29/06/2023.
//

import SwiftUI

struct HStack1: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack(alignment: .bottom) {
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity)
            }
               
            HStack {
                Spacer()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            
            // firsTextBaseline
            HStack (alignment:.firstTextBaseline /* it alignes letters - ignores coma etc. but only first line */) {
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
            }
            
            // lastTextBaseline
            HStack (alignment:.lastTextBaseline /* it alignes letters - ignores coma etc. but only last line */) {
                
                Text("Hello, World! Hello, World! ")
                    .font(.largeTitle)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
            }
            
            
            // Customization
            HStack (alignment:.lastTextBaseline /* it alignes letters - ignores coma etc. but only last line */) {
                
                Text("Hello, World! Hello, World! ")
                    .font(.largeTitle)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.yellow).shadow(radius: 10))
            
        }
       
            
            
            /*It is a pull in view
             Tips alignment in the initializer gives us only .bottom, .center, .top ( it alignes relativly to bigger element in the Hstack
             2. If side alignment is needed it needs to be done by adding a spacer
             1. Or by the flexible frame - but that gives different effects
             
             */
        
    }
}

struct HStack1_Previews: PreviewProvider {
    static var previews: some View {
        HStack1()
    }
}
