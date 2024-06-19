//
//  ThirdView.swift
//  vanilla_swiftui_navigation
//
//  Created by Telem Tobi on 19/06/2024.
//

import SwiftUI

struct ThirdView: View {
    
    let viewModel: ThirdViewModel
    
    var body: some View {
        Color.clear
            .navigationTitle(viewModel.title)
    }
}
