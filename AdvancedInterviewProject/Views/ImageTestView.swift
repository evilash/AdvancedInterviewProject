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
            AIPImage(image: viewModel.displayedImage)
            AIPTextField(text: $viewModel.userInput)
                .navigationTitle(Constants.Views.imageTest)
            
            AIPNavigation(label: Constants.Views.gifTest, destination: GIFTestView(), count: viewModel.userInput.count)
        }
    }
}

struct ImageDisplay_Previews: PreviewProvider {
    static var previews: some View {
        ImageTestView()
    }
}
