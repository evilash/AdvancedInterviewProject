//
//  ColorPickerView.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 6/30/21.
//

import SwiftUI

struct ColorPickerView: View {
    @EnvironmentObject var viewModel: ColorPickerViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                AIPView(navigation: ImageTestView(), navLabel: Constants.Views.imageTest) {
                    ColorPickerText()
                        .navigationBarTitle(Constants.Views.colorPicker, displayMode: .inline)
                    AIPLazyHGrid(buttonColors: viewModel.allButtonColors)
                }
            }
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
