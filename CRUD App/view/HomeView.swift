//
//  HomeView.swift
//  CRUD App
//
//  Created by João Paulo Pereira Silva on 12/08/23.
//

import SwiftUI

struct HomeView: View {
    var user: User
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Bem-vindo, \(user.name)!")
                        .font(.title)
                        .padding()
                    
                    ForEach(0..<10) { index in
                        Text("Item \(index)")
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                    }
                }.frame(maxWidth: .infinity)
            }
        }
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(user: User(name: "Berualdo"))
    }
}
