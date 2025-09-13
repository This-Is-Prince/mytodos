//
//  MyTodosApp.swift
//  MyTodos
//
//  Created by Prince on 13/09/25.
//

import SwiftUI
import SwiftData

@main
struct MyTodosApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            ToDoItem.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration], )
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
