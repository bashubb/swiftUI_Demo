//
//  DatePicker1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 04/07/2023.
//

import SwiftUI

struct DatePicker1: View {
    
    @State private var date = Date()
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            DatePicker(selection: $date, displayedComponents: .date, label: { Text("date")})
                .datePickerStyle(.wheel)
                .labelsHidden()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.yellow.opacity(0.5)))
                
        }
        .padding()
        
    }
}

struct DatePicker1_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker1()
    }
}
