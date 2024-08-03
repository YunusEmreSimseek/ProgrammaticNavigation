//
//  Router.swift
//  ProgrammaticNavigation
//
//  Created by Emre Simsek on 3.08.2024.
//

import Foundation
import Observation
import SwiftUI

// Router is a class that manages the navigation of the app.
// It is an observable object that can be used to navigate between views.
@Observable
final class Router {
    // The current destination
    var navPath: NavigationPath = NavigationPath()

    // Navigate destinations
    public enum Destination: Codable, Hashable {
        case home(_ title: String)
        case login(_ title: String)
        case register
    }

    // Navigate to a destination
    func navigate(to_ destination: Destination) {
        navPath.append(destination)
    }

    func navigateToBack() {
        navPath.removeLast()
    }

    func navigateToRoot() {
        navPath.removeLast(navPath.count)
    }
}
