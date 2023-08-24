//
//  NavigationView1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 06/07/2023.
//

import SwiftUI

struct NavigationView1: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink("Navigate to View2", destination: NaView2())
            }
            .navigationTitle(Text("NavigationView"))
            //.navigationBarBackButtonHidden()
        }
        
    }
}

struct NavigationView1_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView1()
    }
}

struct NaView2: View {
    var body: some View {
        VStack {
            NavigationStack {
                Text("new View")
                NavigationLink("Back", destination: NavigationView1())
            }
        }
        .navigationTitle(Text("NavigationView 2"))
        .navigationBarBackButtonHidden()
    }
}
