//
//  TextWithCustomFonts.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 31/07/2023.
//

import SwiftUI

struct TextWithCustomFonts: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.custom("Nightcall", size: 30))
    }
}

struct TextWithCustomFonts_Previews: PreviewProvider {
    static var previews: some View {
        TextWithCustomFonts()
    }
}
