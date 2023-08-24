//
//  LazyHStack1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 29/06/2023.
//

import SwiftUI

struct LazyHStack1: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(alignment: .center /*1*/, spacing: 20, pinnedViews: [.sectionHeaders, .sectionFooters]) {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    Section(content: {
                        ForEach(0 ..< 15) { item in
                            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                        }
                    }, header: {
                        SectionHeaderView()
                    }, footer: {
                        Image(systemName: "pencil.circle")
                            .font(.largeTitle)
                            .padding()
                })
                }
            }
            .frame(height: 100)
            .background(Rectangle().fill(Color.purple).shadow(radius: 10))
            .padding(.vertical,20)
        }
        
    }
}

/*
 It is push out view Verticaly(normal Hstack is pull in view)
 1 .Element can be align to the for example top in initializer
 */


struct LazyHStack1_Previews: PreviewProvider {
    static var previews: some View {
        LazyHStack1()
    }
}

struct SectionHeaderView: View {
    var body: some View {
        Text("1")
            .font(.title)
            .fontWeight(.heavy)
            .padding()
    }
}
