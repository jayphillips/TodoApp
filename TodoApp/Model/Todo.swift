//
//  Todo.swift
//  TodoApp
//
//  Created by Jay Phillips on 1/2/20.
//  Copyright © 2020 Jay Phillips. All rights reserved.
//

import Foundation

struct Todo: Identifiable {
    var id = UUID()
    var title = ""
    var description = ""
}
