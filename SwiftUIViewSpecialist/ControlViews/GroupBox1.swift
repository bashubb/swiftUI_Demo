//
//  GroupBox1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 06/07/2023.
//

import SwiftUI

struct GroupBox1: View {
    var body: some View {
        VStack {
            GroupBox {
                HStack {
                    Image(systemName: "car")
                    Image(systemName: "car")
                    Image(systemName: "car")
                    Image(systemName: "car")
                    Image(systemName: "car")
                }
                .padding()
            } label: {
                Text("Transportation icons")
            }
        }
        .padding()
        .font(.largeTitle)

    }
}

struct GroupBox1_Previews: PreviewProvider {
    static var previews: some View {
        GroupBox1()
    }
}
