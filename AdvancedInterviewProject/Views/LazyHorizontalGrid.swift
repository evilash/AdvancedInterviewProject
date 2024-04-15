//
//  LazyHorizontalGrid.swift
//  AdvancedInterviewProject
//
//  Created by ms70285 on 8/4/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct LazyHorizontalGrid: View {
    let buttonColors: [ButtonColors]
    let rows: [GridItem] = Array(repeating: .init(.fixed(Constants.CGFloats.forty)), count: ButtonColors.rows)
    
    var body: some View {
        LazyHGrid(rows: rows) {
            ForEach(buttonColors) { buttonColor in
                ColorPickerButton(colors: buttonColor)
            }
        }
    }
}
