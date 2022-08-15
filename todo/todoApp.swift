//
//  todoApp.swift
//  todo
//
//  Created by Muna Tayeb on 16/08/2022.
//

import SwiftUI

@main
struct todoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
