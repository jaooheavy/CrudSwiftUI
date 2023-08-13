//
//  LoginView.swift
//  CRUD App
//
//  Created by João Paulo Pereira Silva on 12/08/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    @State private var isShowingAlert: Bool = false
    @State private var alertMessage: String = ""
    @EnvironmentObject var navigationManager: NavigationManager
    
    var body: some View {
        ZStack {
            VStack {
                Text("Login Screen")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                
                TextField("Email", text: $viewModel.credentials.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                SecureField("Password", text: $viewModel.credentials.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Login") {
                    viewModel.performLogin()
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
            }
            .padding()
            
            if viewModel.isLoggingIn {
                Color.black.opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {} // Block taps on the overlay
                
                VStack {
                    ProgressView("Logging in...") // Show loading indicator
                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.7))
                .ignoresSafeArea()
            }
        }.onReceive(viewModel.$loginResult) { newLoginResult in
            handleLoginResult(newLoginResult)
        }.alert(isPresented: $isShowingAlert) {
            Alert(title: Text("Login"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        }
    }
    
    private func handleLoginResult(_ loginResult: Result<User, LoginError>?) {
        if let result = loginResult {
            switch result {
            case .success(let user):
                navigationManager.navigateToHome(user: user)
            case .failure(let error):
                alertMessage = "Login failed: \(error.localizedDescription)"
                isShowingAlert = true
            }
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
