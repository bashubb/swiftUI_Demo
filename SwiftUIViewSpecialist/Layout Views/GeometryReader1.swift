//
//  GeometryReader1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 30/06/2023.
//

import SwiftUI

struct GeometryReader1: View {
    var body: some View {
        
        List(0 ..< 50) { item in
            GeometryReader { geo in
                Text("Y: \(Int(geo.frame(in: .global).minY))")
                    .foregroundColor(Int(geo.frame(in: .global).minY) < 300 ? .green : .primary)
            }
        }
        .listStyle(.plain)
        
        
//        GeometryReader { geo in
//            VStack {
//                Text("Width: \(geo.size.width)")
//                Text("Height: \(geo.size.height)")
//                Rectangle()
//                    .frame(width: geo.size.width/2, height: geo.size.height/2)
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//        }
//        .ignoresSafeArea()
        
    }
}

/*
 It acts like a ZStack but DONT USE IT THAT WAY
 */

struct GeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader1()
    }
}
