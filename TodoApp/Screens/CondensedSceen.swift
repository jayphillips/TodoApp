//
//  CondensedSceen.swift
//  TodoApp
//
//  Created by Jay Phillips on 1/3/20.
//  Copyright © 2020 Jay Phillips. All rights reserved.
//

import SwiftUI

struct CondensedSceen: View {
    @ObservedObject var todoStore = StoreManager.instance.todoStore
    var body: some View {
        List(todoStore.todos) { todo in
            Text(todo.title)
        }
    }
}

struct CondensedSceen_Previews: PreviewProvider {
    static var previews: some View {
        CondensedSceen()
    }
}
