//
//  FirstView.swift
//  vanilla_swiftui_navigation
//
//  Created by Telem Tobi on 19/06/2024.
//

import SwiftUI

struct FirstView: View {
    
    let viewModel: FirstViewModel
    
    var body: some View {
        Button("Proceed") {
            viewModel.didTapProceedButton()
        }
        .buttonStyle(.bordered)
        .navigationTitle("First View")
    }
}
