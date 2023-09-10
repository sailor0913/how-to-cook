//
//  RecipeDetailView.swift
//  how-to-cook
//
//  Created by ryp on 2023/8/29.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
//                 成品图
                Image(recipe.finalImage ?? "defaultImageName")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .padding()
                Group {
                    Text("名称")
                        .titleStyle()
                    Text(recipe.recipeName)
                        .padding(.horizontal)
                }
                
                // 必备原料部分
                Group {
                    Text("必备原料")
                        .titleStyle()

                    HStack() {
                        ForEach(recipe.essentialIngredients, id: \.self) { ingredient in
                            Text(ingredient)
                                .padding(.horizontal, 5)
                        }
                    }
                    .padding(.horizontal)
                }
                
                // 必备工具部分
                Group {
                    Text("必备工具")
                        .titleStyle()

                    HStack() {
                        ForEach(recipe.tools, id: \.self) { tool in
                            Text(tool)
                                .padding(.horizontal, 5)
                        }
                    }
                    .padding(.horizontal)
                }

                
                // 每份菜的原料用量
                Group {
                    Text("原料用量")
                        .titleStyle()
                    VStack(alignment: .leading) {
                        ForEach(recipe.ingredientAmounts.sorted(by: <), id: \.key) { key, value in
                            HStack {
                                Text(key + ":")
                                    .bold()
                                Text(value)
                            }
                            .padding(.horizontal)
                        }
                    }
                }

                // 操作步骤
                Group {
                    Text("操作步骤")
                        .titleStyle()
                    ForEach(recipe.steps, id: \.self) { step in
                        Text(step)
                            .padding(.horizontal)
                    }
                }

                // 备注
                Group {
                    Text("备注")
                        .titleStyle()
                    ForEach(recipe.notes, id: \.self) { i in
                        Text(i)
                            .padding(.horizontal)
                    }
                }
            }
        }
    }
}
