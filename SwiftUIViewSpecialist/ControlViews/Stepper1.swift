//
//  Stepper1.swift
//  SwiftUIViewSpecialist
//
//  Created by HubertMac on 14/07/2023.
//

import SwiftUI

struct Stepper1: View {
    
    @State var stepperValue = 18
    
    var body: some View {
        VStack {
            Text("\(stepperValue)")
            Stepper(value: $stepperValue, in: 1...50) {
                Text("Age")
            }
        }
        .padding()
    }
}

struct Stepper1_Previews: PreviewProvider {
    static var previews: some View {
        Stepper1()
    }
}
