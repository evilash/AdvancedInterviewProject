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
    var count = 5
    
    var body: some View {
        HStack {
            NavigationLink(label, destination: destination)
            Image(systemName: Constants.Images.chevronRight)
                .foregroundColor(.blue)
        }.hideHStack(count)
    }
}
