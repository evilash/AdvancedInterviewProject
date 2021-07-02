//
//  ColorPickerViewModel.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 6/30/21.
//

import SwiftUI

class ColorPickerViewModel: ObservableObject {
    @Published var color = Color.black
    @Published var message = "Tap a button!"
    
    var allButtonColors: [ButtonColors] { ButtonColors.allCases }
    
    func change(color buttonColor: ButtonColors) {
        color = Color.buttonColor
        message = "You've selected \(buttonColor.id)"
    }
}
