//
//  ShapeOutlines_Strokes.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 24/08/2023.
//

import SwiftUI

struct ShapeOutlines_Strokes: View {
    var body: some View {
        VStack{
            Text("Shapes Outlines")
            Rectangle()
                .strokeBorder(Color.blue, lineWidth: 20) //total width of line inside shape if you use .stroke modifier it applies half inside and half outside the shape
            Rectangle()
                .strokeBorder(Color.blue, style: StrokeStyle(lineWidth: 20, dash: [20, 20]))
            Rectangle()
                .strokeBorder(Color.blue, style: StrokeStyle(lineWidth: 20,lineCap: CGLineCap.round, dash: [20, 40]))
            Rectangle()
                .strokeBorder(Color.blue, style: StrokeStyle(lineWidth: 20,lineCap: CGLineCap.square, dash: [20]))
            Rectangle()
                .strokeBorder(Color.blue, style: StrokeStyle(lineWidth: 20,lineCap: CGLineCap.butt, dash: [20]))
            Rectangle()
                .strokeBorder(Color.blue, style: StrokeStyle(lineWidth: 20,lineCap: CGLineCap.butt, dash: [20, 10, 40 ,5]))
        }
    }
}

struct ShapeOutlines_Strokes_Previews: PreviewProvider {
    static var previews: some View {
        ShapeOutlines_Strokes()
    }
}
