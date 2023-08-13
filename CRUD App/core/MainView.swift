//
//  MainView.swift
//  CRUD App
//
//  Created by João Paulo Pereira Silva on 12/08/23.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var navigationManager: NavigationManager
    
    var body: some View {
        NavigationView {
            ContentView()
        }
    }
}

struct ContentView: View {
    @EnvironmentObject var navigationManager: NavigationManager
    
    var body: some View {
        switch navigationManager.currentScreen {
        case .splash:
            SplashView()
                .transition(.opacity)
        case .login:
            LoginView()
                .transition(.opacity)
        case .home:
            if let user = navigationManager.user {
                HomeView(user: user)
                    .transition(.opacity)
                    .navigationBarTitle("Home", displayMode: .large)
            }
        }
    }
}
