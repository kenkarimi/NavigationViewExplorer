//
//  ContentView2.swift
//  NavigationViewExplorer
//
//  Created by Kennedy Karimi on 16/07/2024.
//

import SwiftUI

//NB: This page doesn't have a back button because the NavigationView begins here. As such, this is where views start being put in the navigation stack. The Login view would ordinarily be the first view to have a navigation bar back button because it's the second view in the navigation stack after this one(Splash()), but because we change the activeView to .login in Login View's onAppear, due to the binding all the way back to the ContentView, the switch statement reacts to this change and since the .login case redirects us back to the Login View, the nav bar back button is hidden automatically by SwiftUI detects it's no longer useful. Even swiping on the view to go back to the Splash no longer works. Typing up the login in this way also means that the nav link in Login() that takes us to the Home View has to now be wrapped in a NavigationView because we have effectively ended the previous navigation view's navigation stack. As a test to prove this statement, If you comment out activeView = .login in Login(), it negates this and you're able to continue to the Home View without a new NavigationView wrapping that link in the Login View.
struct Splash: View {
    @Binding var activeView: GlobalEnumerations.Views
    
    var body: some View {
        NavigationView {
            NavigationLink("Go to Login", destination: Login(activeView: $activeView))
                .isDetailLink(false)
        }
        .onAppear {
            activeView = .splash //Hides the navigation bar back button and removes the swipe-back functionality, making this the first view in the navigation stack.
        }
    }
}

struct SplashHolder: View {
    @State private var activeView: GlobalEnumerations.Views = .contentview
    
    var body: some View {
        Splash(activeView: $activeView)
    }
}

#Preview {
    SplashHolder()
}
