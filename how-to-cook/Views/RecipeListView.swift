//
//  RecipeListView.swift
//  how-to-cook
//
//  Created by ryp on 2023/8/29.
//

import SwiftUI
import CoreData

// 菜谱列表视图
struct RecipeListView: View {
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Recipe.recipeName, ascending: true)],
        animation: .default)
    private var recipes: FetchedResults<Recipe>

    var body: some View {
        NavigationView {
            List(recipes) { recipe in
                NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                    Text(recipe.recipeName ?? "")
                }
            }
            .navigationTitle("菜谱列表")
        }
    }
}
