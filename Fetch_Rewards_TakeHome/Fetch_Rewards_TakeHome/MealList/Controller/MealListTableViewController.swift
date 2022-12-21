//
//  MealListViewController.swift
//  Fetch_Rewards_TakeHome
//
//  Created by Boris Ofon on 12/21/22.
//

import Foundation

import UIKit

class MealListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
    }
}

extension MealListTableViewController {
    
    func style() {
        view.backgroundColor = .systemBackground
        
        tableView.estimatedRowHeight = 60
        tableView.rowHeight = 60
        
        navigationItem.title = "MealList"
    }
}


// MARK: - Table View data source and delegates
extension MealListTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = MealCell()
        cell.mealNameLabel.text = "Text"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}



