//
//  ColorPickerView.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 6/30/21.
//

import SwiftUI

struct ColorPickerView: View {
    @EnvironmentObject var viewModel: ColorPickerViewModel
    let rows: [GridItem] = Array(repeating: .init(.fixed(Constants.CGFloats.forty)), count: Constants.Numbers.two)
    
    var body: some View {
        NavigationView {
            VStack {
                ColorPickerText()
                    .navigationBarTitle(Constants.Views.colorPicker, displayMode: .inline)
                LazyHGrid(rows: rows) {
                    ForEach(viewModel.allButtonColors) { buttonColor in
                        ColorPickerButton(colorInfo: buttonColor)
                    }
                }
                
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
