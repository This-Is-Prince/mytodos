//
//  ContentView.swift
//  MyTodos
//
//  Created by Prince on 13/09/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    
    @Query(sort: \ToDoItem.creationDate, order: .reverse) private var todos: [ToDoItem]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(todos) { todo in
                    Text(todo.title)
                }
            }
            .navigationTitle("My To-Dos")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add To-Do") {
                        addItem()
                    }
                }
            }
        }
    }
    
    private func addItem() {
        let newItem = ToDoItem(title: "Ne To-Do Item")
        modelContext.insert(newItem)
    }
}
