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
                ColorPickerText()
                    .navigationBarTitle(Constants.Views.colorPicker, displayMode: .inline)
                AIPLazyHGrid(buttonColors: viewModel.allButtonColors)
                AIPNavigation(label: Constants.Views.imageTest, destination: ImageTestView())
            }
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
