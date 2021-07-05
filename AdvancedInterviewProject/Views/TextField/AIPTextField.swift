//
//  AIPTextField.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/5/21.
//

import SwiftUI

struct AIPTextField: View {
    let placeholderText: String
    @Binding var text: String
    
    var body: some View {
        TextField(placeholderText, text: $text)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .border(Color.gray)
            .cornerRadius(2.5)
            .padding(.init(arrayLiteral: [.leading, .trailing]), Constants.CGFloats.forty)
    }
}

struct AIPTextField_Previews: PreviewProvider {
    static var previews: some View {
        AIPTextField(placeholderText: "Enter Text", text: .constant("testing"))
    }
}
