//
//  MealRecipe.swift
//  Fetch_Rewards_TakeHome
//
//  Created by Boris Ofon on 12/23/22.
//

import Foundation

class MealRecipe : Codable{
    
    let meals: [MealRecipeContent]
    
    init(mealRecipe: [MealRecipeContent]) {
        self.meals = mealRecipe
    }
}
