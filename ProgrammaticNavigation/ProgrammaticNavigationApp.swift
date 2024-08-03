//
//  ProgrammaticNavigationApp.swift
//  ProgrammaticNavigation
//
//  Created by Emre Simsek on 3.08.2024.
//

import SwiftUI

@main
struct ProgrammaticNavigationApp: App {
    // The router that manages the navigation
    @State private var router: Router = Router()
    var body: some Scene {
        WindowGroup {
            ContentView()
                // Inject the router into the environment
                .environment(router)
        }
    }
}
