//
//  ButtonColors.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 6/30/21.
//

import Foundation

enum ButtonColors: String, CaseIterable, Identifiable {
    case yellow
    case blue
    case green
    case orange
    case indigo
    case purple
    
    static let rows = allCases.count / 3
    
    var id: String { rawValue }
    
    static var randomColorSelector: Self {
        let colors = allCases
        let randomNumber = Int.random(in: 0..<colors.count)
        
        return colors[randomNumber]
    }
}
