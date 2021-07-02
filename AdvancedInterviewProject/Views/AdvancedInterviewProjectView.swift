//
//  AdvancedInterviewProject.swift
//  AdvancedInterviewProject
//
//  Created by Matt M Smith on 6/30/21.
//

import SwiftUI

struct AdvancedInterviewProjectView: View {
    @StateObject var colorPickerVM = ColorPickerViewModel()
    
    var body: some View {
        ColorPickerView()
            .environmentObject(colorPickerVM)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AdvancedInterviewProjectView()
    }
}
