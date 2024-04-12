//
//  ColorPickerButton.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/1/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct ColorPickerButton: View {
    @EnvironmentObject var viewModel: ColorPickerViewModel
    let colors: ButtonColors
    
    var body: some View {
        Button(colors.id) {
            viewModel.change(color: colors)
        }
        .padding(Constants.CGFloats.twenty)
        .accessibility(hidden: colors.color == .blue || colors.color == .orange)
    }
}
