//
//  NavigationViewWithData.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 10/07/2023.
//

import SwiftUI

struct NavigationViewWithData: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                        NavigationLink {
                            NavView2()
                        } label: {
                            HStack {
                                Text("Hello")
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                            }
                            .accentColor(.primary)
                            .padding()
                        }
                        
                    }
                }
                .navigationTitle("NavigationView")
            }
        }
        
    }
}

struct NavigationViewWithData_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewWithData()
    }
}

struct NavView2: View {
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            
            VStack {
                NavigationStack {
                    Text("new View")
                    NavigationLink("Back", destination: NavigationViewWithData())
                }
            }
            .navigationTitle(Text("NavigationView 2"))
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}
