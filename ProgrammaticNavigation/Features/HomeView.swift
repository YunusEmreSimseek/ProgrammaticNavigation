//
//  HomeView.swift
//  ProgrammaticNavigation
//
//  Created by Emre Simsek on 3.08.2024.
//

import SwiftUI

struct HomeView: View {
    @Environment(Router.self) private var router
    let title: String
    var body: some View {
        VStack {
            Text(title)
        }
        .toolbar(content: {
            ToolbarItem {
                Button("Go to root") {
                    router.navigateToRoot()
                }
            }
        })
    }
}

#Preview {
    HomeView(title: "Homeeee")
        .environment(Router())
}
