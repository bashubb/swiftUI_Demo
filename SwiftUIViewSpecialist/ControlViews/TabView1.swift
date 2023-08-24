//
//  TabView1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 22/07/2023.
//

import SwiftUI

struct TabView1: View {
    
    @State var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            PageView(selection: $selection)
                .tabItem {
                /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/
                Image(systemName: "flame")
                
            }.tag(1)
            
            Text("Tab Content 2")
                .tabItem {
                    Image(systemName: "moon")
                    /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }
                .tag(2)
        }
        .onAppear {
                        // correct the transparency bug for Tab bars
                        let tabBarAppearance = UITabBarAppearance()
                        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
                    }
        .tint(.red)
    }
}
struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView1()
    }
}

struct PageView: View {
    @Binding var selection: Int
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            VStack(spacing:20){
                Text("Tab Content 1")
                Button("change") {
                    selection = 2
                }.buttonStyle(.borderedProminent)
            }
        }
            
    }
}
