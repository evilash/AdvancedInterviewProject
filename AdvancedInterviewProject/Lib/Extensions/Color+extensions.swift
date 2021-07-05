//
//  Color+extensions.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/1/21.
//

import struct SwiftUI.Color

extension Color {
    static var buttonColor: Color {
        let randomColor = ButtonColors.randomColorSelector

        switch randomColor {
        case .yellow:
            return .yellow
        case .blue:
            return .blue
        case .green:
            return .green
        case .orange:
            return .orange
        case .indigo:
            return .init(.systemIndigo)
        case .purple:
            return .purple
        }
    }
}
