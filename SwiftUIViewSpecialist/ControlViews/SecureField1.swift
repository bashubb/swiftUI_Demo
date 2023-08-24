//
//  SecureField1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 12/07/2023.
//

import SwiftUI

struct SecureField1: View {
    
    @State var password = ""
    var body: some View {
        VStack {
            Spacer()
            SecureField("password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding()
                
            SecureField("password", text: $password)
                .padding(6)
                .background(RoundedRectangle(cornerRadius: 6)
                    .stroke(.green, lineWidth: 2))
                .padding()
        }
        .font(.title)
    }
}

struct SecureField1_Previews: PreviewProvider {
    static var previews: some View {
        SecureField1()
    }
}
