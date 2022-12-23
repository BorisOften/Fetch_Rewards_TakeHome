//
//  MealDetailViewController+SetupUI.swift
//  Fetch_Rewards_TakeHome
//
//  Created by Boris Ofon on 12/22/22.
//

import UIKit

// MARK: - styling and the layout for the various views in the meal detail controller
extension MealDetailViewController {
    
//    let mealNameLabel = UILabel()
//    let instructionLabel = UILabel()
//    let ingredentLabel = UILabel()
    
    
    func style() {
        // mealNameLabel
        mealNameLabel.translatesAutoresizingMaskIntoConstraints = false
        mealNameLabel.textAlignment = .center
        mealNameLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        mealNameLabel.adjustsFontForContentSizeCategory = true
        mealNameLabel.text = "Welcome to Friends"
        
        //instructionLabel
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.textAlignment = .center
        instructionLabel.font = UIFont.preferredFont(forTextStyle: .body)
        instructionLabel.adjustsFontForContentSizeCategory = true
        instructionLabel.numberOfLines = 0
        instructionLabel.text = "Welcome to Friends Welcome to Friends Welcome to Friends Welcome to Friends Welcome to Friends Welcome to Friends"
        
        ingredentMeasurementTableView.translatesAutoresizingMaskIntoConstraints = false
      
    }
    
    
    func layout()  {
        
        view.addSubview(mealNameLabel)
        view.addSubview(instructionLabel)
        view.addSubview(ingredentMeasurementTableView)
        
        NSLayoutConstraint.activate([
            // mealNameLabel
            mealNameLabel.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 2),
            mealNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // instructionLabel
            instructionLabel.topAnchor.constraint(equalToSystemSpacingBelow: mealNameLabel.bottomAnchor, multiplier: 3),
            instructionLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: instructionLabel.trailingAnchor, multiplier: 1),
            
            //ingredentMeasurementTableView
            ingredentMeasurementTableView.topAnchor.constraint(equalToSystemSpacingBelow: instructionLabel.bottomAnchor, multiplier: 2),
            ingredentMeasurementTableView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: ingredentMeasurementTableView.trailingAnchor, multiplier: 2),
            ingredentMeasurementTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        
        ])
        
    }
    
}
