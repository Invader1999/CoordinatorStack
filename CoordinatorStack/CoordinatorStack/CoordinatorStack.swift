//
//  CoordinatorStack.swift
//  CoordinatorStack
//
//  Created by Kareddy Hemanth Reddy on 14/11/24.
//

import SwiftUI


struct CoordinatorStack<CoordinatorPage: Coordinatable>: View {
    
    let root: CoordinatorPage
    
    init(root: CoordinatorPage) {
        self.root = root
    }
    
    @State private var coordinator = Coordinator<CoordinatorPage>()
    
    var body: some View {
        NavigationStack(path:$coordinator.path ) {
            root
                .navigationDestination(for: CoordinatorPage.self) { $0 }
                .sheet(item: $coordinator.sheet) { $0 }
                .fullScreenCover(item: $coordinator.fullScreenCover){ $0 }
        }
        .environment(coordinator)
    }
}

