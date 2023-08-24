//
//  DisclosureGroup1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 04/07/2023.
//

import SwiftUI

struct DisclosureGroup1: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            DisclosureGroup(/*@START_MENU_TOKEN@*/"Group"/*@END_MENU_TOKEN@*/) {
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 200)
            }
            .padding()
            .background(Color.pink.opacity(0.7))
            
            ScrollView {
                ForEach(0 ..< 50) { item in
                    DisclosureGroup {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 200)
                    } label: {
                        Image(systemName: "moon.fill")
                        Text("label")
                    }
                .padding()
                }
            }

        }
    }
}

struct DisclosureGroup1_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroup1()
    }
}
