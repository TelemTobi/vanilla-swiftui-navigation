//
//  ContentView.swift
//  vanilla_swiftui_navigation
//
//  Created by Telem Tobi on 19/06/2024.
//

import SwiftUI

// These two go togther. The router is in charge of the logic and the Navigator is in charge of the UI.
// I just came up with the names.. so feel free to change them 🩵

final class AppRouter: ObservableObject {
    
    // Here u define the all the possible destinations along with their injected values
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

struct AppNavigator: View {
    
    @ObservedObject var router = AppRouter()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            // The navigationDestination modifier u put on the root view of the navigator, in this case - FirstView
            // That can also be dynamic using an if or switch statements
            FirstView()
                .navigationDestination(for: AppRouter.Destination.self) { destination in
                    switch destination {
                    case .secondView:
                        SecondView()
                        
                    case let .thirdView(title):
                        ThirdView(title: title)
                    }
                }
        }
        .environmentObject(router)
    }
}

#Preview {
    AppNavigator()
}
