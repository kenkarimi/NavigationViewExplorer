//
//  ContentView.swift
//  NavigationViewExplorer
//
//  Created by Kennedy Karimi on 16/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State var activeView: GlobalEnumerations.Views = .contentview
    
    var body: some View {
        switch activeView {
        case .contentview: //Default on first time load.
            Splash(
                activeView: $activeView
            )
        case .splash:
            Splash(
                activeView: $activeView
            )
        case .login:
            Login(activeView: $activeView)
        case .home:
            Home(activeView: $activeView)
        }
    }
}

#Preview {
    ContentView()
}
