//
//  MealListViewController.swift
//  Fetch_Rewards_TakeHome
//
//  Created by Boris Ofon on 12/21/22.
//

import Foundation

import UIKit

class MealListTableViewController: UITableViewController {
    
    var meals = [MealInfo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        getMealList()
        
    }
}

extension MealListTableViewController {
    
    func style() {
        view.backgroundColor = .systemBackground
        
        tableView.estimatedRowHeight = 50
        tableView.rowHeight = 50
        
        navigationItem.title = "MealList"
    }
}


// MARK: - Table View data source and delegates
extension MealListTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        meals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = MealCell()
        let currentMeal = meals[indexPath.row]
        cell.mealNameLabel.text = currentMeal.strMeal
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedMeal = meals[indexPath.row]
        
        let mealDetailViewController = MealDetailViewController()
        mealDetailViewController.allMealInformation = selectedMeal
        
        navigationController?.pushViewController(mealDetailViewController, animated: true)
    }
}

// MARK: - Networking
extension MealListTableViewController {
    
    func getMealList() {

        NetworkManager().getMealList { (result) in
            
            switch result {
                
            case .success(let meal):
                self.meals = meal.meals
                // sorting the list
                self.meals = self.meals.sorted(by: {$0.strMeal < $1.strMeal})
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}



