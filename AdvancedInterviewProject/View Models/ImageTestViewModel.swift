//
//  ImageTestViewModel.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/2/21.
//

import SwiftUI

class ImageTestViewModel: ObservableObject {
    @Published var userInput = ""
    
    private let imageModel: ImageTestModel
    private let disabledImage: UIImage
    private let enabledImage: UIImage
    
    init() {
        imageModel = ImageTestModel()
        disabledImage = imageModel.disabledImage
        enabledImage = imageModel.enabeledImage
    }
    
    var displayedImage: UIImage {
        let displayImage = userInput.count >= Constants.Numbers.five
        return displayImage ? enabledImage : disabledImage
    }
}
