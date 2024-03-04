//
//  ColorPickerView.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 6/30/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct ColorPickerView: View {
    @EnvironmentObject var viewModel: ColorPickerViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                AIPView(navigation: ImageTestView(), navLabel: Constants.Views.imageTest) {
                    ColorPickerText()
                        .navigationBarTitle(Constants.Views.colorPicker, displayMode: .inline)
                    LazyHorizontalGrid(buttonColors: viewModel.allButtonColors)
                }
            }
        }
    }
}
