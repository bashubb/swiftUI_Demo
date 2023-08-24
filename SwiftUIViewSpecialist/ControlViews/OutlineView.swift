//
//  OutlineView.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 10/07/2023.
//

import SwiftUI


struct Person: Identifiable {
    var id = UUID()
    var name = ""
    var children: [Person]? = nil
}

struct OutlineView: View {
    
    var parents = [Person(name: "Mark",
                          children: [Person(name: "Paola")]),
                   Person(name: "Rodrigo",
                          children: [Person(name: "Kai"),
                                     Person(name: "Brennan"),
                                     Person(name: "Easton")]),
                   Person(name: "Marcella",
                          children: [Person(name: "San"),
                                     Person(name: "Melissa"),
                                     Person(name: "Melanie")])]
    
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            List {
                Section {
                    OutlineGroup(parents, children: \.children) { person in
                        HStack {
                            Image(systemName: "person.circle.fill")
                            Text(person.name)
                            Spacer()
                        }
                    }
                    
                } header: {
                    HStack {
                        Text("Families")
                            .padding()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.gray.opacity(0.5))
                }
            }.listStyle(.plain)
        }
    }
}

struct OutlineView_Previews: PreviewProvider {
    static var previews: some View {
        OutlineView()
    }
}
