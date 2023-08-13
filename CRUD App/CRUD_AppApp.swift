//
//  CRUD_AppApp.swift
//  CRUD App
//
//  Created by João Paulo Pereira Silva on 12/08/23.
//

import SwiftUI

@main
struct CRUD_AppApp: App {
    @StateObject private var navigationManager = NavigationManager()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(navigationManager)
        }
    }
}


