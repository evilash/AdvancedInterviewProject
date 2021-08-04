//
//  GIFTestView.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/5/21.
//

import SwiftUI

struct GIFTestView: View {
    @ObservedObject var viewModel = GIFTestViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.title)
            AIPImage(image: viewModel.image)
            AIPTextField(text: $viewModel.query)
                .navigationTitle(Constants.Views.gifTest)
            
            Button(Constants.Buttons.search) {
                viewModel.getGifAndTitle()
            }
        }
        .alert(item: $viewModel.networkError) {_ in
            Alert(title: Text(Constants.Alert.title), message: Text(viewModel.error), dismissButton: .cancel(Text(Constants.Alert.ok)))
        }
        .onDisappear {
            viewModel.stopGIF()
        }
    }
}

struct GIFTestView_Previews: PreviewProvider {
    static var previews: some View {
        GIFTestView()
    }
}
