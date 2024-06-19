//
//  AppCoordinator.swift
//  vanilla_swiftui_navigation
//
//  Created by Telem Tobi on 19/06/2024.
//

import Foundation

// That class is in charge of the navigation logic
// I just came up with the names.. so feel free to change them 🩵

final class AppCoordinator: ObservableObject, FirstRouter, SecondRouter, ThirdRouter {
    
    // Here u define all the possible destinations along with their injected values
    public enum Destination: Hashable, Codable {
        case secondView
        case thirdView(diExample: String)
    }
    
    // Represents the stack of the navigation stack
    @Published var path: [Destination] = []

    // Just like we did in the old Coordinator pattern 👇
    
    func proceedFromFirstView() {
        path.append(.secondView)
    }
    
    func proceedFromSecondView(diExample: String) {
        path.append(.thirdView(diExample: diExample))
    }
}
