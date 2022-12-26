//
//  NetworkManager.swift
//  Fetch_Rewards_TakeHome
//
//  Created by Boris Ofon on 12/22/22.
//

import Foundation

class NetworkManager {
    
    func getMealList(completion: @escaping(Result<Meal,Error>) -> ()) {
        
        let urlAddress = "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert"
        
        guard let url = URL(string: urlAddress)  else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, urlResponse, error) in
            
        if error != nil {
            print(error?.localizedDescription)
            return
        }

        do {
            let mealData = try JSONDecoder().decode(Meal.self, from: data!)
            completion(Result.success(mealData))
            } catch  {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    func getRecipeInformation(id: String, completion: @escaping (Result<MealRecipe,Error>) -> ()){
        
        let urlAddress = "https://themealdb.com/api/json/v1/1/lookup.php?i=\(id)"
        
        guard let url = URL(string: urlAddress)  else {
            return
        }
        
        
        let task = URLSession.shared.dataTask(with: url) { (data, urlResponse, error) in
            
        if error != nil {
            print(error?.localizedDescription)
            return
        }
            
            guard let httpResponse = urlResponse as? HTTPURLResponse else {
                return
            }

        do {
            let recipeData = try JSONDecoder().decode(MealRecipe.self, from: data!)
            completion(Result.success(recipeData))
            } catch  {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}
