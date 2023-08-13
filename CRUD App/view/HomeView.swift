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
            Text("\(user.name)")
                .font(.largeTitle)
                .foregroundColor(.green)
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(user: User(name: "Berualdo"))
    }
}
