//
//  Image2_Symbols.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 25/08/2023.
//

import SwiftUI

struct Image2_Symbols: View {
    var body: some View {
        VStack (spacing: 40) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Image(systemName: "scanner.fill")
                .font(.system(size:80, weight: .bold))
            
            Image(systemName: "gauge.badge.plus") // multicolor image
                .renderingMode(.original)
                .foregroundColor(.red)
            
            HStack {
                Image(systemName: "flame")
                    .imageScale(.small) // the same size as text
                Text("John Doe")
            }
        }
        .font(.largeTitle)
    }
}

struct Image2_Symbols_Previews: PreviewProvider {
    static var previews: some View {
        Image2_Symbols()
    }
}
