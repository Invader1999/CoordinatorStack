//
//  CoordinatorStackApp.swift
//  CoordinatorStack
//
//  Created by Kareddy Hemanth Reddy on 14/11/24.
//

import SwiftUI

@main
struct CoordinatorStackApp: App {
    var body: some Scene {
        WindowGroup {
            CoordinatorStack(root: MainCoordinatorPages.root)
            
        }
    }
}
