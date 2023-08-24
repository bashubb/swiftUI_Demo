//
//  Color1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 24/08/2023.
//

import SwiftUI

struct Color1: View {
    
    let someColor = Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
    
    var body: some View {
        //Color is a VIEW!
        VStack {
            Color.red
                //push out view
                .frame(height: 400)
                .cornerRadius(40)
                .shadow(radius: 10)
            
            // You can add your color to the assets and set 2 colors for lightmode and dark mode
            Color("BackgroundCOlor")
            
            Circle()
                .fill(Color.primary) // default color - depending of mode you're in
            
            Circle()
                .fill(Color.secondary) // it also changes depending of  mode youre in
            
            ZStack{
                Circle()
                    .fill(Color.secondary)
                Circle()
                    .fill(Color(UIColor.systemBackground))// it match to your background color
                    .padding(4)
                Circle()
                    .fill(Color.secondary)
                    .padding()
                Circle()
                    .fill(Color.secondary)
                    .padding(40)
                Circle()
                    .fill(Color(UIColor.systemBackground))// it match to your background color
                    .padding(50)
            }
            // if you need to use color picker inside code you need to assign it into a variable and type Color(#colorLiteral(
            Circle()
                .fill(someColor.opacity(0.5)) // lower opacity - more transparent - its dynamic for modes
                
        }
        //There's easy way to use custom picker - use color in the background and the choose 'custom background' in the side bar
        .background()
    }
}

struct Color1_Previews: PreviewProvider {
    static var previews: some View {
        
            Color1()
        
    }
}
