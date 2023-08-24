//
//  List1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 06/07/2023.
//

import SwiftUI

struct List1: View {
    
    var stringArray = ["a", "b", "c", "d", "e"]
    var body: some View {
        List(stringArray, id:\.self) {item in
            Text(item)
        }
        .listStyle(.plain)
    }
}

struct List1_Previews: PreviewProvider {
    static var previews: some View {
        List1()
    }
}
