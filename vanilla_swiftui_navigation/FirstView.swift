//
//  FirstView.swift
//  vanilla_swiftui_navigation
//
//  Created by Telem Tobi on 19/06/2024.
//

import SwiftUI

struct FirstView: View {
    
    @EnvironmentObject var router: AppRouter
    
    var body: some View {
        Button("Proceed") {
            router.proceedFromFirstView()
        }
        .buttonStyle(.bordered)
        .navigationTitle("First View")
    }
}
