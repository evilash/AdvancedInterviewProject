//
//  AIPLazyHGrid.swift
//  AdvancedInterviewProject
//
//  Created by ms70285 on 8/4/21.
//

import SwiftUI

struct AIPLazyHGrid: View {
    let buttonColors: [ButtonColors]
    let rows: [GridItem] = Array(repeating: .init(.fixed(Constants.CGFloats.forty)), count: ButtonColors.rows)
    
    var body: some View {
        LazyHGrid(rows: rows) {
            ForEach(buttonColors) { buttonColor in
                ColorPickerButton(colorInfo: buttonColor)
            }
        }
    }
}

struct AIPLazyHGrid_Previews: PreviewProvider {
    static var previews: some View {
        AIPLazyHGrid(buttonColors: ButtonColors.allCases)
    }
}
