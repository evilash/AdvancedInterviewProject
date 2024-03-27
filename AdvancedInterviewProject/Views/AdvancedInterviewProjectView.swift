//
//  AdvancedInterviewProject.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 6/30/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct AdvancedInterviewProjectView: View {
    @StateObject var colorPickerVM = ColorPickerViewModel()
    
    var body: some View {
        ColorPickerView()
            .environmentObject(colorPickerVM)
    }
}
