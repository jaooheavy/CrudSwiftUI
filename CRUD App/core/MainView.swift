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
        switch navigationManager.currentScreen {
            case .splash:
                SplashView()
            case .login:
                LoginView()
        }
    }
}
