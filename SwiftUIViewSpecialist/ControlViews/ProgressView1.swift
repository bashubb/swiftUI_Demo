//
//  ProgressView1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 10/07/2023.
//

import SwiftUI

struct ProgressView1: View {
    
    @State private var downloading = true
    
    var body: some View {
        VStack (spacing: 50) {
            VStack {
                Text("Downloading")
                if downloading {
                    ProgressView()
                        .frame(width:50, height: 50)
                        .scaleEffect(2)
                        .progressViewStyle(CircularProgressViewStyle(tint: Color.purple))
                }
                
                Button {
                    downloading.toggle()
                } label: {
                    Text("Change downloading")
                }

            }
            
            ProgressView("Progress: 50%", value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                .tint(.purple)
                .padding()
            
            ProgressView(value: 0.5) {
                Text("progress 50 %")
            } currentValueLabel: {
                Text("5 files out of 10")
                    .font(.body)
            }
            .padding()

        }
        .font(.title)
    }
}

struct ProgressView1_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView1()
    }
}
