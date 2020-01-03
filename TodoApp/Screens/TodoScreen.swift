//
//  TodoScreen.swift
//  TodoApp
//
//  Created by Jay Phillips on 1/2/20.
//  Copyright © 2020 Jay Phillips. All rights reserved.
//

import SwiftUI

struct TodoScreen: View {
    @ObservedObject var todoStore = StoreManager.instance.todoStore
    @State private var nextTodo: Todo = Todo()
    var body: some View {
        NavigationView {
            VStack {
                List(todoStore.todos) { todo in
                    TodoRow(todo: todo)
                }
                Form {
                    TextField("Enter title", text: $nextTodo.title)
                    TextField("Enter description", text: $nextTodo.description)
                    Button(action: {
                        self.todoStore.todos.append(self.nextTodo)
                        self.nextTodo = Todo()
                    }, label: {
                        Text("ADD")
                    })
                }
            }
            .navigationBarTitle(Text("Todo List"))
        }
    }
}

struct TodoRow: View {
    let todo: Todo
    var body: some View {
        VStack(alignment: .leading) {
            Text(todo.title)
                .font(.headline)
                .fontWeight(.bold)
            Text(todo.description)
                .font(.body)
        }
    }
}

struct TodoScreen_Previews: PreviewProvider {
    static var previews: some View {
        TodoScreen()
    }
}
