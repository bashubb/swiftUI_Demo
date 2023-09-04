//
//  CurvedSideRectangle.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 25/08/2023.
//

import SwiftUI

struct CurvedSideRectangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addCurve(to: CGPoint(x: rect.minX, y: rect.maxY), control1: CGPoint(x: rect.midX + 100, y: rect.maxY + 50), control2:  CGPoint(x: rect.midX - 100, y: rect.maxY + 50))
        path.closeSubpath()
        return path
    }
    
   
}

struct CurvedSideRectangle_Previews: PreviewProvider {
    static var previews: some View {
        Demonstration()
            
    }
}


struct Demonstration: View {
    
    let backgroundColor = Color(#colorLiteral(red: 0.839230597, green: 0.7655926347, blue: 0.6699362397, alpha: 1))
    let barColor = Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack{
                CurvedSideRectangle()
                    .fill(barColor)
                    .frame(height: 100)
                    .shadow(radius: 8)
                    .overlay(
                        Text("Concert")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .offset(x: 0, y: 20))
                
                Spacer()
            }
            .ignoresSafeArea()
        }
    }
}
