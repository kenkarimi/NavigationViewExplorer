//
//  ContentViewAlt.swift
//  NavigationViewExplorer
//
//  Created by Kennedy Karimi on 18/07/2024.
//

import SwiftUI

struct ContentViewAlt: View {
    @State var stackingViewsPermitted: Bool = false //Since this state property is binded to the link below(isActive:) clicking the link automatically toggles this variable to true as well as taking us to the destination view. As such, ContentViewAlt becomes the first the first view stacked in the navigation stack.
    var body: some View {
        NavigationView {
            NavigationLink("Go to Splash", destination: SplashAlt(stackingViewsPermitted: $stackingViewsPermitted), isActive: $stackingViewsPermitted)
                .isDetailLink(false) //Default is true if not used. Has no effect iPhone so code works as intended if this property not used on any NavigationLink, but is necessary for code to work on iPad. Because of the large screen size, iPad uses a two-column navigation split view with a sidebar column on the left and a larger detail column on the right. If isDetailLink is true/omitted, clicking this link in the sidebar column("Go to Splash") replaces the content of the detail column with the destination view(SplashAlt). Ultimately, pressing the "Pop to ContentViewAlt" button in the LoginAlt view doesn't produce the desired effect. If isDetailLink is false, it treats the NavigationLink as a modal presentation and the apps entire UI stays in the navigation split view's sidebar colum on the left. The detail column on the right remains entirely empty and the "Pop to ContentviewAlt" button works as intended. isDetailLink(false) has to be used on each navigation link for this behavior to stick otherwise if left out of any subsequent link, the destination view of that link will fail to appear on the left sidebar like the previous ones and instead replace the detail column on the right and as such, the 'pop' wouldn't work. An example of this would be if I commented out isDetailLink false in the view SplashAlt.
                .navigationBarTitle("ContentView")
        }
    }
}

#Preview {
    ContentViewAlt()
}
