//
//  AIPNavigation.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/5/21.
//

import SwiftUI

struct AIPNavigation<Destination>: View where Destination : View {
    let label: String
    let destination: Destination
    
    var body: some View {
        HStack {
            NavigationLink(label, destination: destination)
            Image(systemName: Constants.SystemImages.chevronRight)
                .foregroundColor(.blue)
        }
    }
}

struct AIPNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AIPNavigation(label: "Test", destination: ColorPickerView())
    }
}
