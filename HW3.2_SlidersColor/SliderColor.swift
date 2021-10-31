//
//  SliderColor.swift
//  HW3.2_SlidersColor
//
//  Created by Anton Duplin on 29/10/21.
//

import SwiftUI

struct SliderColor: View {
    @Binding var value: Double
    @FocusState var isInputActive: Bool
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .frame(width: 50.0)
            Slider(value: $value, in: 0...255, step: 1)
            TextField("255", value: $value, formatter: NumberFormatter())
                .textContentType(.oneTimeCode)
                .keyboardType(.numberPad)
                .frame(width: 50.0)
                .textFieldStyle(.roundedBorder)
                .focused($isInputActive)
        }
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                
                Button("Done") {
                    isInputActive = false
                }
            }
        }
    }
}

struct SliderColor_Previews: PreviewProvider {
    static var previews: some View {
        SliderColor(value: .constant(0))
    }
}
