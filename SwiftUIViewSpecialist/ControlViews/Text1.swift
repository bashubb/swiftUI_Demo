//
//  ShapesIntro.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 22/07/2023.
//

import SwiftUI

struct Text1: View {
    
    @ScaledMetric private var fontSize = 36
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Fixed Size - 36")
                .font(.system(size: 36))
            
            Text("Scaled Metric")
                .font(.system(size: fontSize))
            
            Text("Placeholder")
                .font(.largeTitle)
            
            Text("Rounded")
                .font(.system(.largeTitle, design: .rounded, weight: .heavy))
            
            Text("Monospaced")
                .font(.system(.largeTitle, design: .monospaced, weight: .heavy))
            
            Text("Serif")
                .font(.system(.largeTitle, design: .serif, weight: .heavy))
            
            
            Text("Align this text Align this text Align this text Align this text Align this text")
            //it works only with multi lines
                .multilineTextAlignment(.trailing)
            
            
            Text("Align this to the leading side")
            // you can change align of the Vstack
            // you can also use the flexible frame and change alignment there, you can also use maxHeight and then it is available to put a text element everywhere on your screen 
                .frame(maxWidth: .infinity, alignment: .leading)
                
        }
        .padding()
        
        
    }
}

struct Text1_Previews: PreviewProvider {
    static var previews: some View {
        Text1()
    }
}
