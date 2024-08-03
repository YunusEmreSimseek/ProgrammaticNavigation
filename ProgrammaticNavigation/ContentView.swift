//
//  ContentView.swift
//  ProgrammaticNavigation
//
//  Created by Emre Simsek on 3.08.2024.
//

import SwiftUI

struct ContentView: View {
    // Inject the router into the environment
    @Environment(Router.self) private var router
    var body: some View {
        // We are binding the router to the environment
        @Bindable var router = router
        NavigationStack(path: $router.navPath) {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                Button("Navigate Home View") {
                    router.navigate(to_: .home("Home View"))
                }
                Button("Navigate Login View") {
                    router.navigate(to_: .login("Login View"))
                }
                NavigationLink(value: Router.Destination.register) {
                    Text("Naviate Register View")
                }
            }
            .padding()
            .navigationDestination(for: Router.Destination.self) { destination in
                switch destination {
                    case .home(let message): HomeView(title: message)
                    case .login(let message): LoginView(title: message)
                    case .register: RegisterView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .environment(Router())
}
