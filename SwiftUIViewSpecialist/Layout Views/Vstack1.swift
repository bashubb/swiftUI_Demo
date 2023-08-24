//
//  Vstack1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 29/06/2023.
//

import SwiftUI

struct VStack1: View {
    var body: some View {
        VStack (alignment:.leading) {
            /* Vertical Stack
             only 10 views inside
             It is pull- in view */
            
            // Tips
            /* 1 .the alignment is relative you need to align it in the frame, or put a first element into a HStack and then change align in the initializer
             2 .flexible frame - you can channge pull in view into a push out view (frame: maxWidth: .infinity*/
            
            HStack {
                Text("hello ")
                Spacer() // <- 1. it can be done this way 1st element + spacer in vstack in Hstack and alignment on VStack
            }
            Text("hello ")
            Text("hello ")
            Text("hello ")
            Text("hello ")
            Text("hello ")
            Text("hello ")
            Text("hello ")
            Text("hello ")
            
            
        }
        //.frame(maxWidth:.infinity , alignment: .leading) <- 2. or it can be done this way
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VStack1()
    }
}
