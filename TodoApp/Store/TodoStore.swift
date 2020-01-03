//
//  TodoStore.swift
//  TodoApp
//
//  Created by Jay Phillips on 1/2/20.
//  Copyright © 2020 Jay Phillips. All rights reserved.
//

import Combine

class TodoStore: ObservableObject {
    
    var objectWillChange = ObservableObjectPublisher()
    
    var todos: [Todo] = [] {
        willSet {
            objectWillChange.send()
        }
    }
    
    init() {
        fetchTodos()
    }
    
    func fetchTodos() {
        //URLSession and download todos from a server.
        
        // dummy data
        todos = [
            Todo(title: "Get Eggs", description: "18 pack large white"),
            Todo(title: "Buy a Lambo", description: "buy that car!"),
            Todo(title: "Cook pizza", description: "everyone loves pizza!")
        ]
    }
}
