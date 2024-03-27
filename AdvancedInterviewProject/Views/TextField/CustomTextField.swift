//
//  CustomImage.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/5/21.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    
    var body: some View {
        TextField(Constants.TextField.placeholderText, text: $text)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .border(Color.gray)
            .cornerRadius(2.5)
            .padding(.init(arrayLiteral: [.leading, .trailing, .bottom]), Constants.CGFloats.forty)
            .padding(.top, Constants.CGFloats.twenty)
    }
}

struct AIPTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(text: .constant("testing"))
    }
}
