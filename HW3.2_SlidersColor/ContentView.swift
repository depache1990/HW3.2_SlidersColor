//
//  ContentView.swift
//  HW3.2_SlidersColor
//
//  Created by Anton Duplin on 29/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var redColor = Double.random(in: 0...255)
    @State private var greenColor = Double.random(in: 0...255)
    @State private var blueColor = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(.gray).ignoresSafeArea()
            VStack {
                ColorView()
                    .foregroundColor(Color(red: redColor/255.0, green: greenColor/255.0, blue: blueColor/255.0))
                
                SliderColor(value: $redColor)
                    .accentColor(.red)
                
                SliderColor(value: $greenColor)
                    .accentColor(.green)
                
                SliderColor(value: $blueColor)
                
                Spacer()
            }
        }
        .onTapGesture {
            self.endTextEditing()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
// MARK: KeyBoard
extension View {
    func endTextEditing() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder),
                                        to: nil, from: nil, for: nil)
    }
}




