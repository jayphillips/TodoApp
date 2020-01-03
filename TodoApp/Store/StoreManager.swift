//
//  StoreManager.swift
//  TodoApp
//
//  Created by Jay Phillips on 1/3/20.
//  Copyright © 2020 Jay Phillips. All rights reserved.
//

import Foundation

class StoreManager {
    static let instance = StoreManager()
    
    var todoStore = TodoStore()
}
