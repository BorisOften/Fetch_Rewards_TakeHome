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
    
    let cellReuseIdendifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        getMealList()
        
    }
}

extension MealListTableViewController {
    
    func style() {
        view.backgroundColor = .systemBackground
        
        tableView.estimatedRowHeight = 90
        tableView.rowHeight = 90
        tableView.register(MealCell.self, forCellReuseIdentifier: cellReuseIdendifier)
        
        navigationItem.title = "MealList"
    }
}


// MARK: - Table View data source and delegates
extension MealListTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        meals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdendifier, for: indexPath) as! MealCell
        let currentMeal = meals[indexPath.row]
        
        cell.mealNameLabel.text = currentMeal.strMeal
        
        // this will download the image 
        cell.mealImageView.downloadImage(from: currentMeal.strMealThumb) 
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let selectedMeal = meals[indexPath.row]
        print(selectedMeal.strMealThumb)
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



