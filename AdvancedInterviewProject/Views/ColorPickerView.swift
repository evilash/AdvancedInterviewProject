//
//  ColorPickerView.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 6/30/21.
//

import SwiftUI

struct ColorPickerView: View {
    @EnvironmentObject var viewModel: ColorPickerViewModel
    var rows: [GridItem] = Array(repeating: .init(.fixed(Constants.CGFloats.forty)), count: Constants.Numbers.two)
    
    var body: some View {
        ColorPickerText()
        LazyHGrid(rows: rows) {
            ForEach(viewModel.buttonColors) { buttonColor in
                ColorPickerButton(colorInfo: buttonColor)
            }
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
