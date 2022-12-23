//
//  MealDetailViewController.swift
//  Fetch_Rewards_TakeHome
//
//  Created by Boris Ofon on 12/21/22.
//

import UIKit

class MealDetailViewController: UIViewController {

    let mealNameLabel = UILabel()
    let instructionLabel = UILabel()
    let ingredentMeasurementTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        
        setupTableView()
    }
}


// MARK: - ingredentAndMeasurementTableView data source and delegate
extension MealDetailViewController : UITableViewDataSource , UITableViewDelegate{
    
    func setupTableView() {
        ingredentMeasurementTableView.dataSource = self
        ingredentMeasurementTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = IngredientMeasurementCell()
        
        return cell
    }
    
}
