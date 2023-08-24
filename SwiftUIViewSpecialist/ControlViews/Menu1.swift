//
//  Menu1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 06/07/2023.
//

import SwiftUI

struct Menu1: View {
    var body: some View {
        Menu("menu") {
            Text("Buttons")
            Button("button") {}
            Button("button") {}
            Button("button") {}
            Button("button") {}
            Button("button") {}
            Button("button") {}
        }
    }
}

struct Menu1_Previews: PreviewProvider {
    static var previews: some View {
        Menu1()
    }
}
