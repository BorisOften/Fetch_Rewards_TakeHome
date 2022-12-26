//
//  Meal.swift
//  Fetch_Rewards_TakeHome
//
//  Created by Boris Ofon on 12/22/22.
//

import Foundation

class Meal: Codable {
    
    let meals: [MealInfo]
    
    init(meals: [MealInfo]) {
        self.meals = meals
    }
   
}

class MealInfo: Codable {
    
    let strMeal: String
    let strMealThumb: String
    let idMeal: String

    init(strMeal: String, strMealThumb: String, idMeal: String, test: String) {
        
        self.strMeal = strMeal
        self.strMealThumb = strMealThumb
        self.idMeal = idMeal
    }
}
