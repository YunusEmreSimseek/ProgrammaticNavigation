//
//  LoginView.swift
//  ProgrammaticNavigation
//
//  Created by Emre Simsek on 3.08.2024.
//

import SwiftUI

struct LoginView: View {
    @Environment(Router.self) private var router
    let title: String
    var body: some View {
        VStack {
            Text(title)
            Button("Go to home") {
                router.navigate(to_: .home("I came from LoginView"))
            }
        }
        
    }
}

#Preview {
    LoginView(title: "Login View")
        .environment(Router())
}
