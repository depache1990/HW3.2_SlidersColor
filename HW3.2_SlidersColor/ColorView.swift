//
//  ColorView.swift
//  HW3.2_SlidersColor
//
//  Created by Anton Duplin on 29/10/21.
//

import SwiftUI

struct ColorView: View {
    var body: some View {
        Rectangle()
            .frame(width: 300, height: 150)
            .cornerRadius(25)
            .overlay(RoundedRectangle(cornerRadius: 25).stroke(lineWidth: 2)
                        .foregroundColor(.white))
    }
}


struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
