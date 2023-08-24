//
//  LazyHgrid1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 01/07/2023.
//

import SwiftUI

struct LazyHgrid1: View {
    var gridItem = GridItem(.flexible(minimum: 20, maximum: 80), spacing: 20, alignment: .center)
    
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                LazyHGrid(rows: [gridItem],alignment:. center, spacing: 20, pinnedViews: [.sectionHeaders, .sectionFooters]) {
                    Section {
                        ForEach(0 ..< 50) { item in
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 80)
                        }
                    } header: {
                        SectionHeaderView2()
                    } footer: {
                        SectionFooterView2()
                    }
                }
            }
            Rectangle()
            //Rectangle()
        }
    }
}


/*its verticaly push out view ( the same as the lazy Hstack
 does not come with its own scrollView*/
struct LazyHgrid1_Previews: PreviewProvider {
    static var previews: some View {
        LazyHgrid1()
            .font(.largeTitle)
    }
}

struct SectionHeaderView2: View {
    var body: some View {
        Text("1")
            .padding(.horizontal)
            .background(RoundedRectangle(cornerRadius: 10)
                .fill(Color.white.opacity(0.4)))
    }
}

struct SectionFooterView2: View {
    var body: some View {
        Text("end ")
            .padding(.horizontal)
            .background(RoundedRectangle(cornerRadius: 10)
                .fill(Color.white.opacity(0.4)))
    }
}
