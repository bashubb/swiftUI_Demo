//
//  TriangularShape.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 05/09/2023.
//

import SwiftUI

struct TriangularShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.closeSubpath()
        
        return path
    }
    
    
}


struct ExampleView2: View {
    
    @State var isRotating = false
    
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack {
                ForEach(0..<4) { item in
                    
                    if item == 0 || item == 2 {
                        TriangularShape()
                            .frame(height: 100)
                            .scaleEffect(y: -1 )
                            .rotationEffect(Angle(degrees: isRotating ? 360 : 0), anchor: .leading)
                            .animation(.interpolatingSpring(stiffness: 50, damping: 7), value: isRotating)
                    }
                    else {
                        TriangularShape()
                            .frame(height: 100)
                            .scaleEffect(x: isRotating ?  -1 : 0)
                            .animation(.easeInOut.repeatCount(5).speed(5), value: isRotating)
                    }
                }
            }
            .padding()
            
            Spacer()
            
            Button {
                isRotating.toggle()
            } label: {
                Text("Rotate!")
                    .font(.title)
            }
            .padding()
            .background(.thickMaterial)
            .cornerRadius(.infinity)
            
            Spacer()

        }
        .onAppear {
            isRotating.toggle()
        }
    }
}

struct TriangularShape_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView2()
    }
}
