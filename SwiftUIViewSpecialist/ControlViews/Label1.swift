//
//  Label1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 06/07/2023.
//

import SwiftUI

struct Label1: View {
    var body: some View {
        VStack {
            
            List {
                HStack {
                    Image(systemName: "house")
                    Text("Label")
                }
                HStack {
                    Image(systemName: "car")
                    Text("Label")
                }
                HStack {
                    Image(systemName: "bicycle")
                    Text("Label")
                }
                HStack {
                    Image(systemName: "42.circle")
                    Text("Label")
                }
                
                
            }
            List{
                Label(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/, systemImage: "house")
                    .foregroundColor(.blue)
                Label(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/, systemImage: "car")
                Label(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/, systemImage: "bicycle")
                Label(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/, systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
            }
        }
        
    }
}


/* If use label in a list, there is so much more control over the alignment than with the Hstack */
struct Label1_Previews: PreviewProvider {
    static var previews: some View {
        Label1()
    }
}
