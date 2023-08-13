//
//  LoginViewModel.swift
//  CRUD App
//
//  Created by João Paulo Pereira Silva on 12/08/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var credentials: Credentials = Credentials()
    @Published var isLoggingIn: Bool = false
    @Published var loginResult: Result<User, LoginError> = Result.empty
    
    struct Credentials {
        var email: String = ""
        var password: String = ""
    }
    
    func performLogin() {
        isLoggingIn = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.isLoggingIn = false
            if self.credentials.email == "admin" && self.credentials.password == "admin" {
                // Simulate login process
                self.loginResult = .success(User(name: "Admin"))
            } else {
                self.loginResult = .failure(.invalidCredentials)
            }
        }
    }
}

struct User {
    let name: String
    // Other user properties
}

enum LoginError: Error {
    case invalidCredentials
    case serverError
}
