//
//  MealDetailViewController.swift
//  Fetch_Rewards_TakeHome
//
//  Created by Boris Ofon on 12/21/22.
//

import UIKit

class MealDetailViewController: UIViewController {

    let instructionNameLabel = UILabel()
    let instructionLabel = UILabel()
    let ingredentListLabel = UILabel()
    let ingredentMeasurementTableView = UITableView()
    
    let mealId: Int? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        
        setupTableView()
        navigationItem.title = "Lost"
        
    }
}


// MARK: - ingredentAndMeasurementTableView data source and delegate
extension MealDetailViewController : UITableViewDataSource , UITableViewDelegate{
    
    func setupTableView() {
        ingredentMeasurementTableView.dataSource = self
        ingredentMeasurementTableView.delegate = self
        
        ingredentMeasurementTableView.estimatedRowHeight = 50
        ingredentMeasurementTableView.rowHeight = 50
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = IngredientMeasurementCell()
        
        return cell
    }
}
