//
//  Spacer!.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 29/06/2023.
//

import SwiftUI

struct Spacer_: View {
    var body: some View {
        VStack {
            Spacer()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Spacer(minLength: 0)
            Rectangle()
                
            Spacer()
        }
    }
}


/*
 Spacer makes space and divides it equaly between other Views
 In initilizer you can specify some parameters - example: minLengh, if no space needed it should be set it to 0 and View after it should has no fram
 
 */
struct Spacer__Previews: PreviewProvider {
    static var previews: some View {
        Spacer_()
    }
}
 
