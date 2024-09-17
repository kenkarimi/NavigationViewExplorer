//
//  Login.swift
//  NavigationViewExplorer
//
//  Created by Kennedy Karimi on 16/07/2024.
//

import SwiftUI

struct Login: View {
    @Binding var activeView: GlobalEnumerations.Views
    
    var body: some View {
        NavigationView {
            NavigationLink("Login here...", destination: Home(activeView: $activeView))
                .isDetailLink(false)
        }
        .onAppear {
            activeView = .login //Hides the navigation bar back button and removes the swipe-back functionality, making this the first view in the navigation stack.
        }
    }
}

struct LoginHolder: View {
    @State private var activeView: GlobalEnumerations.Views = .contentview
    
    var body: some View {
        Login(activeView: $activeView)
    }
}

#Preview {
    LoginHolder()
}
