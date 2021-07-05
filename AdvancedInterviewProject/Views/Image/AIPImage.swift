//
//  AIPImage.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/5/21.
//

import SwiftUI

struct AIPImage: View {
    let image: UIImage
    
    var body: some View {
        Image(uiImage: image)
            .scaleEffect(.init(width: Constants.Numbers.five, height: Constants.Numbers.five))
            .padding(.bottom, Constants.CGFloats.forty)
    }
}

struct AIPImage_Previews: PreviewProvider {
    static var previews: some View {
        AIPImage(image: (UIImage(systemName: Constants.SystemImages.photo)!))
    }
}
