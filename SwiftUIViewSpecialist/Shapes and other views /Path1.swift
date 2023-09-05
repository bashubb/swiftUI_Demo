//
//  Path1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 25/08/2023.
//

import SwiftUI

struct Path1: View {
    var body: some View {
        VStack {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            Triangle1()
            .fill(Color.green)
            .padding()
        }
    }
}

struct Triangle1: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: 0, y: rect.maxY))
            path.closeSubpath()
        }
    }
}

struct Path1_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Path1()
            Triangle1()
        }
    }
}

