//
//  TabViewPaging.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 22/07/2023.
//

import SwiftUI

struct TabViewPaging: View {
    
    @State var selection = 1
    
    var body: some View {
        TabView {
            Color.green
                .ignoresSafeArea()
            Color.blue
                .ignoresSafeArea()
        }
        .tabViewStyle(.page(indexDisplayMode: .automatic))
        .ignoresSafeArea()
    }
}

struct TabViewPaging_Previews: PreviewProvider {
    static var previews: some View {
        TabViewPaging()
    }
}
