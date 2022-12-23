//
//  MealDetailViewController+SetupUI.swift
//  Fetch_Rewards_TakeHome
//
//  Created by Boris Ofon on 12/22/22.
//

import UIKit

// MARK: - styling and the layout for the various views in the meal detail controller
extension MealDetailViewController {
    
    
//    let ingredentListLabel = UILabel()
//    let ingredentMeasurementTableView = UITableView()
    
    func style() {
        
        //instructionNameLabel
        instructionNameLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionNameLabel.textAlignment = .center
        instructionNameLabel.font = .boldSystemFont(ofSize: 20)
        instructionNameLabel.adjustsFontForContentSizeCategory = true
        instructionNameLabel.text = "How To Make"

        
        //instructionLabel
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.textAlignment = .center
        instructionLabel.font = UIFont.preferredFont(forTextStyle: .body)
        instructionLabel.adjustsFontForContentSizeCategory = true
        instructionLabel.numberOfLines = 0
        instructionLabel.text = "Welcome to Friends Welcome to Friends Welcome to Friends Welcome to Friends Welcome to Friends Welcome to Friends"
        
        //ingredentListLabel
        ingredentListLabel.translatesAutoresizingMaskIntoConstraints = false
        ingredentListLabel.textAlignment = .center
        ingredentListLabel.font = .boldSystemFont(ofSize: 20)
        ingredentListLabel.adjustsFontForContentSizeCategory = true
        ingredentListLabel.text = "Ingredients and Measurements"
        
        //table view
        ingredentMeasurementTableView.translatesAutoresizingMaskIntoConstraints = false
        ingredentMeasurementTableView.backgroundColor = .red
      
    }
    
    
    func layout()  {
        
        view.addSubview(instructionLabel)
        view.addSubview(ingredentMeasurementTableView)
        view.addSubview(instructionNameLabel)
        view.addSubview(ingredentListLabel)
        
        NSLayoutConstraint.activate([
            
            //instructionNameLabel
            instructionNameLabel.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 2),
            instructionNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // instructionLabel
            instructionLabel.topAnchor.constraint(equalToSystemSpacingBelow: instructionNameLabel.bottomAnchor, multiplier: 1),
            instructionLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: instructionLabel.trailingAnchor, multiplier: 1),
            
            //ingredentListLabel
            ingredentListLabel.topAnchor.constraint(equalToSystemSpacingBelow: instructionLabel.bottomAnchor, multiplier: 2),
            ingredentListLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            //ingredentMeasurementTableView
            ingredentMeasurementTableView.topAnchor.constraint(equalToSystemSpacingBelow: ingredentListLabel.bottomAnchor, multiplier: 2),
            ingredentMeasurementTableView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: ingredentMeasurementTableView.trailingAnchor, multiplier: 2),
            ingredentMeasurementTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        
        ])
        
    }
    
}
