//
//  LoginView.swift
//  CoordinatorStack
//
//  Created by Kareddy Hemanth Reddy on 14/11/24.
//

import SwiftUI

struct LoginView: View {
    let title:String
    
    
    @Environment(Coordinator<LoginCoordinatorPages>.self) private var loginCoordinator
    
    @Environment(Coordinator<MainCoordinatorPages>.self) private var mainCoordinator
    
    var body: some View {
        List {
            Button("Forgot Password"){
                loginCoordinator.push(.forgotPassword)
            }
            
            Button("Pop"){
                mainCoordinator.pop(.sheet)
            }
        }
        .navigationTitle(title)
    }
}
