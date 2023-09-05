//
//  Wave.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 05/09/2023.
//

import SwiftUI

struct Wave: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addCurve(to: CGPoint(x: rect.minX, y: rect.maxY),                  control1: CGPoint(x: rect.midX * 1.25,
                                        y:rect.maxY * 0.7),
                      control2: CGPoint(x: rect.midX * 0.75,
                                        y: rect.maxY * 1.3))
        path.closeSubpath()
        
        return path
    }
}



struct ExampleView: View {
    var body: some View {
        VStack {
            Wave()
                .fill(.thinMaterial)
                .frame(height: 200)
                .overlay(Wave()
                    .fill(Color.green.opacity(0.2))
                    .scaleEffect(x: -1))
                .overlay(Text("New Wave")
                    .font(.largeTitle))
                
            Spacer()
            
            
        }
        .edgesIgnoringSafeArea(.top)
        
    }
}


struct Wave_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}

