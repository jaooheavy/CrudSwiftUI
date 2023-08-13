//
//  NavigationManager.swift
//  CRUD App
//
//  Created by João Paulo Pereira Silva on 12/08/23.
//

import SwiftUI

class NavigationManager: ObservableObject {
    @Published var currentScreen: Screen = .splash
    
    enum Screen {
        case splash
        case login
        // Add more screen cases as needed
    }
    
    func navigateTo(screen: Screen) {
        currentScreen = screen
    }
}
