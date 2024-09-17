//
//  AppExitHelper.swift
//  NavigationViewExplorer
//
//  Created by Kennedy Karimi on 16/07/2024.
//

import SwiftUI

//An observable object is a custom object for your data that can be bound to a view from storage in SwiftUI’s environment. SwiftUI watches for any changes to observable objects that could affect a view and displays the correct version of the view after a change.

//An observable object needs to publish any changes to its data, so that its subscribers can pick up the change.
class AppExitHelper: ObservableObject {
    let close: () -> Void //Default type is a function.
    
    //@escaping keyword ensures that the closure(close) remains valid and can be called even after the init() constructor has completed its execution. In other words, by using @escaping, you're informing the caller(e.g.In ShiftiOSApp.swift) that the closure they provide might be stored and called later.
    init(close: @escaping () -> Void) {
        self.close = close
    }
}
