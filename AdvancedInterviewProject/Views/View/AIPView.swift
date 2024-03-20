//
//  AIPView.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 8/10/21.
//

import SwiftUI

struct AIPView<Content: View, Destination>: View where Destination : View {
    let content: Content
    let destination: Destination
    let label: String
    var count: Int
    
    init(navigation: Destination, navLabel: String, count: Int = 5, @ViewBuilder content: () -> Content) {
        destination = navigation
        label = navLabel
        self.count = count
        self.content = content()
    }
    
    var body: some View {
        content
        
        CustomNavigation(label: label, destination: destination, count: count)
    }
}
