//
//  LoginAlt.swift
//  NavigationViewExplorer
//
//  Created by Kennedy Karimi on 18/07/2024.
//

import SwiftUI

struct LoginAlt: View {
    @Binding var stackingViewsPermitted: Bool
    
    var body: some View {
        VStack {
            Text("Login here...")
            Button {
                self.stackingViewsPermitted = false //Toggling this to false automatically is detected by ContentViewAlt since this variable is binded all the way back there. This pops us back to ContentViewAlt by popping out this LoginAlt view and the Splash view out of the navigation stack, making ContentViewAlt the only view in the stack.
            } label: {
                Text("Pop to ContentViewAlt")
            }
        }
        .navigationBarTitle("Login")
    }
}

struct LoginAltHolder: View {
    @State private var stackingViewsPermitted: Bool = false
    
    var body: some View {
        LoginAlt(stackingViewsPermitted: $stackingViewsPermitted)
    }
}

#Preview {
    LoginAltHolder()
}
