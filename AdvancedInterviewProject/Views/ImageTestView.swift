//
//  ImageTestView.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/2/21.
//

import SwiftUI

struct ImageTestView: View {
    @ObservedObject private var viewModel = ImageTestViewModel()
    
    var body: some View {
        VStack {
            AIPView(navigation: GIFTestView(), navLabel: Constants.Views.gifTest, count: viewModel.userInput.count) {
                CustomImage(image: viewModel.displayedImage)
                CustomTextField(text: $viewModel.userInput)
            }
        }
    }
}

struct ImageDisplay_Previews: PreviewProvider {
    static var previews: some View {
        ImageTestView()
    }
}
