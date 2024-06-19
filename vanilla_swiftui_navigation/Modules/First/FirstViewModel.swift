//
//  FirstViewModel.swift
//  vanilla_swiftui_navigation
//
//  Created by Telem Tobi on 19/06/2024.
//

import Foundation

protocol FirstRouter {
    func proceedFromFirstView()
}

struct FirstViewModel {
    
    let router: FirstRouter
    
    func didTapProceedButton() {
        router.proceedFromFirstView()
    }
}
