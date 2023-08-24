//
//  Divider1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 24/08/2023.
//

import SwiftUI

struct Divider1: View {
    var body: some View {
        VStack {
            Text("Divider")
            Divider() // visual element which divides two views
                .frame(width: 300)
            Text("Divider")
            HStack{
                Text("Divider")
                Divider()
                    .background(Color.purple) // you can't change thickness
                Text("Divider")
            }
        }
    }
}

struct Divider1_Previews: PreviewProvider {
    static var previews: some View {
        Divider1()
    }
}
