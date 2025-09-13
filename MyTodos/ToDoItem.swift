//
//  ToDoItem.swift
//  MyTodos
//
//  Created by Prince on 13/09/25.
//

import Foundation
import SwiftData

@Model
class ToDoItem {
    @Attribute(.unique) var id: String
    
    var title: String
    var isCompleted: Bool
    var creationDate: Date
    
    init(title: String, isCompleted: Bool = false) {
        self.id = UUID().uuidString
        self.title = title
        self.isCompleted = isCompleted
        self.creationDate = .now
    }
}
