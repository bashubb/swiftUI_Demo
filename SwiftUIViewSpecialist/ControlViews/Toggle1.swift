//
//  Toggle1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 22/08/2023.
//

import SwiftUI

struct Toggle1: View {
    @State private var isOn = true
    @State private var isActive = true
    
    var body: some View {
        VStack {
            
            Button(action: {
                isActive.toggle()
            }, label: {
                Text(isActive ? "Turn On the toggle" : "Turn Off the toggle")
            })
            .buttonStyle(.borderedProminent)
            
            Toggle(isOn: $isOn) {
                HStack{
                    Image(systemName: "heart.fill")
                        .foregroundColor(isOn ? .red : .primary)
                    Text(isOn ? "ON" : "OFF")
                }
            }
            .disabled(isActive)
            .toggleStyle(.button)
            .padding()
        }
    }
}

struct Toggle1_Previews: PreviewProvider {
    static var previews: some View {
        Toggle1()
    }
}
