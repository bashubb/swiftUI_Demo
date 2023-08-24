//
//  LazyVgrid.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 01/07/2023.
//

import SwiftUI

struct LazyVgrid: View {
    
    var gridItem = GridItem(.flexible(minimum: 50, maximum: 200))
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [gridItem, gridItem, gridItem], alignment: .center, spacing: 24, pinnedViews: .sectionHeaders) {
                Section {
                    ForEach(0 ..< 50) { item in
    //                    RoundedRectangle(cornerRadius: 20)
                        Image(systemName: "\(item).circle")
                            .font(.largeTitle)
                            .frame(height: 50)
                    }
                } header: {
                    LazyVgridHeader()
                }
                
            }
        }
    }
}


/* it requires column parameter*/
struct LazyVgrid_Previews: PreviewProvider {
    static var previews: some View {
        LazyVgrid()
    }
}

struct LazyVgridHeader: View {
    var body: some View {
        Text("Section 1")
            .frame(maxWidth: .infinity)
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Rectangle()
                .fill(Color.red.opacity(0.5)))
        
            
    }
}
