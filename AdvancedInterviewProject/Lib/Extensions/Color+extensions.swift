//
//  Color+extensions.swift
//  AdvancedInterviewProject
//
//  Created by ms70285 on 7/1/21.
//

import SwiftUI

extension Color {
    static var buttonColor: Color {
        let colors = ButtonColors.allCases
        let randomNumber = Int.random(in: 0..<colors.count)
        let randomColor = colors[randomNumber]

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
