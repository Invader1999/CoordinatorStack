//
//  MainView.swift
//  CoordinatorStack
//
//  Created by Kareddy Hemanth Reddy on 14/11/24.
//

import SwiftUI

struct MainView: View {
    @Environment(Coordinator<MainCoordinatorPages>.self) private var mainCoordinator
    var body: some View {
        List {
            Button("Sign Up"){
                mainCoordinator.push(.signUp)
            }
            
            Button("Login"){
                mainCoordinator.push(.login(title: "Name"),type: .sheet)
            }
        }
    }
}

