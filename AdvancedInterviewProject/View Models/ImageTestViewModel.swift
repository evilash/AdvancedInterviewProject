//
//  ImageTestViewModel.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/2/21.
//

import SwiftUI

class ImageTestViewModel: ObservableObject {
    @Published var userInput = ""
    let imageModel = ImageTestModel()

    var disabledImage: UIImage { imageModel.disabledImage }
    var enabledImage: UIImage { imageModel.enabeledImage }
    var isDisplayed: Bool { userInput.count >= Constants.Numbers.five }
}
