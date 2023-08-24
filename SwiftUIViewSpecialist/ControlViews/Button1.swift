//
//  Button1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 04/07/2023.
//

import SwiftUI

struct Button1: View {
    var body: some View {
        VStack(spacing: 40) {
            Button("Tap Me") {
                
            }
            Button {
                
            } label: {
                VStack {
                    Text("WiFi")
                    Image(systemName: "wifi")
                        .foregroundColor(.green)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .shadow(radius: 10))
                
                
            }

        }
        .font(.largeTitle)
    }
}

struct Button1_Previews: PreviewProvider {
    static var previews: some View {
        Button1()
    }
}
