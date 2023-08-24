//
//  Group1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 24/08/2023.
//

import SwiftUI

struct Group1: View {
    var body: some View {
        VStack(spacing:20) {
            //You can add only 10 views inside and group can solve that problem
            Text("Group")
            Text("Group")
            Text("Group")
            Text("Group")
            Text("Group")
            Text("Group")
            Group {
                Text("Group")
                Text("Group")
                // Group takes spacing parameter from parent view Vstack does not
            }
            .background(Color.yellow) // it applies individualy to each view inside 

            VStack {
                Text("Group")
                Text("Group")
                Text("Group")
                Text("Group")
                Text("Group")
            }
            .background(Color.yellow) // it adds to a Vstack
            
        }
        .font(.title)
    }
}

struct Group1_Previews: PreviewProvider {
    static var previews: some View {
        Group1()
    }
}
