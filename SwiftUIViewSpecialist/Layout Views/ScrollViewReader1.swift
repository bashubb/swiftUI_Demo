//
//  ScrollViewReader1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 02/07/2023.
//

import SwiftUI

struct ScrollViewReader1: View {
    
    @State var isSelected = false
    @State var selectedID = ""
    
    var body: some View {
        VStack {
            ScrollViewReader { proxy in
                HStack {
                    Button("Scroll to the bottom") {
                        withAnimation() {
                            proxy.scrollTo(Int(selectedID), anchor: .top)
                            isSelected = true
                            
                        }
                    }
                    TextField("number of ", text: $selectedID)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .center)
                
                ScrollView(showsIndicators: false) {
                    ForEach(0 ..< 50) { item in
                        getImage(for: item)
                            .font(.largeTitle)
                            .id(item)
                            
                    }
                }
            }
        }
        
        
    }
    
    func getImage(for index: Int) -> some View {
        if index == Int(selectedID) && isSelected == true  {
            return Image(systemName: "\(index).square.fill")
                .foregroundColor(.red)
        }
        return Image(systemName: "\(index).square")
            .foregroundColor(.primary)
    }
}

struct ScrollViewReader1_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReader1()
    }
}


