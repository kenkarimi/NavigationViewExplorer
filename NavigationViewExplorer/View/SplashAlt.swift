//
//  SpalshAlt.swift
//  NavigationViewExplorer
//
//  Created by Kennedy Karimi on 18/07/2024.
//

import SwiftUI

struct SplashAlt: View {
    @Binding var stackingViewsPermitted: Bool
    
    var body: some View {
        //Second view stacked in the navigation stack when link is clicked to take us to LoginAlt.
        NavigationLink("Go to Login", destination: LoginAlt(stackingViewsPermitted: $stackingViewsPermitted))
            .isDetailLink(false)
            .navigationBarTitle("Splash")
    }
}

struct SplashAltHolder: View {
    @State private var stackingViewsPermitted: Bool = false
    
    var body: some View {
        SplashAlt(stackingViewsPermitted: $stackingViewsPermitted)
    }
}

#Preview {
    SplashAltHolder()
}
