//
//  Home.swift
//  NavigationViewExplorer
//
//  Created by Kennedy Karimi on 17/07/2024.
//

import SwiftUI

struct Home: View {
    @Binding var activeView: GlobalEnumerations.Views
    
    var body: some View {
        Text("Welcome to your Home View...")
        .onAppear {
            activeView = .home //Hides the navigation bar back button and removes the swipe-back functionality, making this the first view in the navigation stack.
        }
    }
}

struct HomeHolder: View {
    @State private var activeView: GlobalEnumerations.Views = .contentview
    
    var body: some View {
        Home(activeView: $activeView)
    }
}

#Preview {
    HomeHolder()
}
