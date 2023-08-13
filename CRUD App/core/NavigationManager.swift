//
//  NavigationManager.swift
//  CRUD App
//
//  Created by João Paulo Pereira Silva on 12/08/23.
//

import SwiftUI

class NavigationManager: ObservableObject {
    @Published var currentScreen: Screen = .splash
    
    var user: User?
    
    enum Screen {
        case splash
        case login
        case home
        // Add more screen cases as needed
    }
    
    private func navigateTo(screen: Screen) {
        withAnimation {
            currentScreen = screen
        }
    }
    
    func navigateToLogin() {
        navigateTo(screen: .login)
    }
    
    func navigateToHome(user: User) {
        self.user = user
        navigateTo(screen: .home)
    }
}
