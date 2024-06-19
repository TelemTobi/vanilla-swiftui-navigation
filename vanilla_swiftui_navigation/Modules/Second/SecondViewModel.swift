//
//  SecondViewModel.swift
//  vanilla_swiftui_navigation
//
//  Created by Telem Tobi on 19/06/2024.
//

protocol SecondRouter {
    func proceedFromSecondView(diExample: String)
}

struct SecondViewModel {
    
    let router: SecondRouter
    
    func didTapProceedButton() {
        router.proceedFromSecondView(diExample: "Injected Value")
    }
}
