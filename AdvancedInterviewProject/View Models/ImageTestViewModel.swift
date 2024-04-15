//
//  ImageTestViewModel.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/2/21.
//

import SwiftUI

final class ImageTestViewModel: ObservableObject {
    @Published var userInput = ""
    
    private let image: ImageModel
    private let disabledImage: UIImage
    private let enabledImage: UIImage
    
    init() {
        image = ImageModel()
        disabledImage = image.disabled
        enabledImage = image.enabeled
    }
    
    var displayedImage: UIImage {
        let displayImage = userInput.count >= 5
        return displayImage ? enabledImage : disabledImage
    }
}
