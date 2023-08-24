//
//  SegmentedControl1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 14/07/2023.
//

import SwiftUI

struct SegmentedControl1: View {
    
    @State var selection = 1
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Picker(selection: $selection, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                Image(systemName: "wifi").tag(3)
                Text("1").tag(1)
                /*@START_MENU_TOKEN@*/Text("2").tag(2)/*@END_MENU_TOKEN@*/
            }
            .pickerStyle(.segmented)
            .background(Color.blue)
            .cornerRadius(8)
            .padding()
        }
    }
}

struct SegmentedControl1_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl1()
    }
}
