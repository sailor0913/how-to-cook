//
//  how_to_cookApp.swift
//  how-to-cook
//
//  Created by ryp on 2023/8/21.
//

import SwiftUI

@main
struct how_to_cookApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
//            RecipeListView(recipes: sampleRecipes)
            RecipeListView()
            .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

