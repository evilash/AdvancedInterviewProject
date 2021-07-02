//
//  ButtonColors.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 6/30/21.
//

import Foundation
import SwiftUI

enum ButtonColors: String, CaseIterable, Identifiable {
    case yellow
    case blue
    case green
    case orange
    case indigo
    case purple
    
    var id: String { rawValue }    
}
