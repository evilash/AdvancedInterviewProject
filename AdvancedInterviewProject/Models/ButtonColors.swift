//
//  ButtonColors.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 6/30/21.
//

import Foundation
import struct SwiftUI.Color

enum ButtonColors: String, CaseIterable, Identifiable {
    case yellow
    case blue
    case green
    case orange
    case indigo
    case purple
    
    static let rows = allCases.count / 3
    
    var id: String { rawValue }
    
    @available(iOS 15.0, *)
    var color: Color {
        switch self {
        case .yellow:
            Color.yellow
        case .blue:
            Color.blue
        case .green:
            Color.green
        case .orange:
            Color.orange
        case .indigo:
            Color.indigo
        case .purple:
            Color.purple
        }
    }
}
