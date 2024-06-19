//
//  SecondView.swift
//  vanilla_swiftui_navigation
//
//  Created by Telem Tobi on 19/06/2024.
//

import SwiftUI

struct SecondView: View {
    
    @EnvironmentObject var router: AppRouter
    
    var body: some View {
        Button("Proceed") {
            router.proceedFromSecondView(diExample: "Injected Value")
        }
        .buttonStyle(.bordered)
        .navigationTitle("Second View")
    }
}
