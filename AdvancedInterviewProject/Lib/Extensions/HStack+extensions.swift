//
//  HStack+extensions.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 7/12/21.
//

import SwiftUI

extension HStack {
    func hideHStack(_ count: Int) -> some View {
        opacity(count < 5 ? 0 : 1)
    }
}

