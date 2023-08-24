//
//  Form1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 04/07/2023.
//

import SwiftUI

struct Form1: View {
    var body: some View {
        Form {
            Section {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                DisclosureGroup {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                } label: {
                    Text("CLick to open")
                }

                
            } header: {
                ExtractedView()
            }
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct Form1_Previews: PreviewProvider {
    static var previews: some View {
        Form1()
    }
}

struct ExtractedView: View {
    var body: some View {
        HStack {
            Text("title ")
            Image(systemName: "heart.fill")
                .font(.largeTitle)
                .foregroundColor(.red)
        }
    }
}
