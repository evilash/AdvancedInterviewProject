//
//  ColorPickerText.swift
//  AdvancedInterviewProject
//
//  Created by ms70285 on 7/1/21.
//

import SwiftUI

struct ColorPickerText: View {
    @EnvironmentObject var viewModel: ColorPickerViewModel
    
    var body: some View {
        Text(viewModel.message)
            .foregroundColor(viewModel.color)
    }
}
