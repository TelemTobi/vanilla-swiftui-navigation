//
//  ContentView.swift
//  vanilla_swiftui_navigation
//
//  Created by Telem Tobi on 19/06/2024.
//

import SwiftUI

// That view is observing the coordinator and is in charge of the navigation UI 😇

struct AppNavigator: View {
    
    @ObservedObject var coordinator = AppCoordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            // The navigationDestination modifier u put on the root view of the navigator, in this case - FirstView
            // That can also be dynamic using an if or switch statements
            FirstView(viewModel: FirstViewModel(router: coordinator))
                .navigationDestination(for: AppCoordinator.Destination.self) { destination in
                    switch destination {
                    case .secondView:
                        let viewModel = SecondViewModel(router: coordinator)
                        SecondView(viewModel: viewModel)
                        
                    case let .thirdView(title):
                        let viewModel = ThirdViewModel(title: title, router: coordinator)
                        ThirdView(viewModel: viewModel)
                    }
                }
        }
        // Instead of using SwiftUI's environment, the router can be passed via ViewModels, Presenters or whatever ur'e using :)
        // .environmentObject(coordinator)
    }
}

#Preview {
    AppNavigator()
}
