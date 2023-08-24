//
//  ZStack1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 29/06/2023.
//

import SwiftUI

struct ZStack1: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            // Back
            Color.pink
                .ignoresSafeArea()
            
            // Front
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            
            //Floating button
            
            Button {
            
            } label: {
                Image(systemName:"plus.circle.fill")
                    .font(.system(size: 60))
            }
            .padding()
        }
    }
}

/*
 Its pull in view
 Color it is a push out view
 */
struct ZStack1_Previews: PreviewProvider {
    static var previews: some View {
        ZStack1()
    }
}
