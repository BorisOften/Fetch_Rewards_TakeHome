//
//  MealsManager.swift
//  Fetch_Rewards_TakeHome
//
//  Created by Boris Ofon on 12/22/22.
//

import Foundation

class MealsManager {
    
    private let meals: [Meal]?
    
    init(meals: [Meal]? = nil) {
        self.meals = meals
    }
    
    func getCount()-> Int {
        return meals?.count ?? 0
    }
    
    func getMealAtIndex(index: Int) -> Meal{
            return (meals?[index])!
    }
    
}
