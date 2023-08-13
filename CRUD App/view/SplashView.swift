//
//  SplashView.swift
//  CRUD App
//
//  Created by João Paulo Pereira Silva on 12/08/23.
//

import SwiftUI

struct SplashView: View {
    @EnvironmentObject var navigationManager: NavigationManager
    
    var body: some View {
        Text("Splash Screen")
            .font(.largeTitle)
            .foregroundColor(.blue)
            .onAppear {
                // Simulate some loading process (e.g., data fetching, setup)
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    navigationManager.navigateToLogin()
                }
            }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
