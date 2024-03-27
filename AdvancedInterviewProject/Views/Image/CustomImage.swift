//
//  CustomImage.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/5/21.
//

import SwiftUI

struct CustomImage: View {
    let image: UIImage
    
    var body: some View {
        Image(uiImage: image)
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 180)
    }
}

struct AIPImage_Previews: PreviewProvider {
    static var previews: some View {
        CustomImage(image: (UIImage(systemName: Constants.Images.photo)!))
    }
}
