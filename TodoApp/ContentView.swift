//
//  ContentView.swift
//  TodoApp
//
//  Created by Jay Phillips on 1/2/20.
//  Copyright © 2020 Jay Phillips. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        TabView(selection: $selection) {
            TodoScreen()
                    .tabItem {
                    Text("Todos")
                    }
                    .tag(0)
                    CondensedSceen()
                .tabItem {
                    Text("Condensed")
            }
                    .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
