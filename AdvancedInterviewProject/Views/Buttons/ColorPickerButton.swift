//
//  ColorPickerButton.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/1/21.
//

import SwiftUI

struct ColorPickerButton: View {
    @EnvironmentObject var viewModel: ColorPickerViewModel
    let colorInfo: ButtonColors
    
    var body: some View {
        Button(colorInfo.id) {
            viewModel.change(color: colorInfo)
        }
        .padding(Constants.CGFloats.twenty)
        .accessibility(hidden: true)
    }
}

struct ColorPickerButton_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerButton(colorInfo: .green)
    }
}
