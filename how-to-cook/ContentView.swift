//
//  ContentView.swift
//  how-to-cook
//
//  Created by ryp on 2023/8/21.
//

import SwiftUI
import CoreData



struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        // 创建模拟的 NSManagedObjectContext
        let context = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)

        // 创建一个新的 Recipe 对象用于预览
        let newRecipe = Recipe(context: context)
        newRecipe.recipeName = "拔丝土豆"
        newRecipe.essentialIngredients = ["土豆", "食用油", "淀粉", "白砂糖", "水", "芝麻"] as NSObject
        newRecipe.tools = ["无"] as NSObject
        newRecipe.ingredientAmounts = ["土豆": "2个", "食用油": "300ml", "白砂糖": "120g", "水": "100ml", "芝麻": "5g"] as NSObject
        newRecipe.steps = [  "1. 土豆去皮，切均匀的小块。放入淀粉（不加水）搅拌，使得淀粉覆盖土豆表面",
                             "2. 起锅烧油，放入土豆块，缓缓翻滚煎炸 5-7 分钟 ，直至筷子可以插进土豆",
                             "3. 取出土豆，放入大碗备用",
                             "4. 锅中加入水、白砂糖，沿着一个方向慢慢搅动白砂糖，直到白砂糖颜色变成褐色",
                             "5. 重新倒入土豆，翻炒30S后出锅",
                             "6. 土豆盛盘，散上芝麻" ] as NSObject
        newRecipe.finalImage = "basitudou"
        newRecipe.notes = [ "1. 土豆煎炸不可太熟透，否则在拔丝端盘时不容易定型，影响美观",
                            "2. 对于使用剩余的食用油，可以考虑重新收集到油壶",
                            "3. 要多放糖，这是为了在土豆上面裹上一层厚厚的糖浆，从而产生拔丝的效果",
                            "4. 食用油的量使得土豆能浮在油上面即可"] as NSObject

        // 使用新创建的 Recipe 对象进行预览
        return RecipeDetailView(recipe: newRecipe)
            .environment(\.managedObjectContext, context)
    }
}

