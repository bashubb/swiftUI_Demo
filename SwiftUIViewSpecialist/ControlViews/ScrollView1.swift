//
//  ScrollView1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 12/07/2023.
//

import SwiftUI

struct ScrollView1: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100, height: 70)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100, height: 70)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100, height: 70)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100, height: 70)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100, height: 70)
                    
            }
            .padding()
        }
    }
}

struct ScrollView1_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView1()
    }
}
