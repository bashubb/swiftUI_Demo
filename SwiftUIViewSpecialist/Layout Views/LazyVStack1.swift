//
//  LazyVStack1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 29/06/2023.
//

import SwiftUI

struct LazyVStack1: View {
    var body: some View {
        
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 20, pinnedViews: [.sectionHeaders, .sectionFooters]) {
                ForEach(1..<5) { item in
                    Section(content: {
                        ForEach(0..<50 ) { item in
                            Text("something")
                        }
                    }, header: {
                        HeaderView(sectionNumber: item)
                    }, footer: {
                        FooterView()
                })
                }
                    
            }
        }
        /* Push out view horizontaly, so you can just align elements in initializer */
        // It has no its own scrollview
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStack1()
    }
}

struct HeaderView: View {
    var sectionNumber = 0
    var body: some View {
        Text("Header \(sectionNumber)").font(.largeTitle)
            .padding()
    }
}

struct FooterView: View {
    var body: some View {
        Text("footer")
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.5))
            
    }
}
