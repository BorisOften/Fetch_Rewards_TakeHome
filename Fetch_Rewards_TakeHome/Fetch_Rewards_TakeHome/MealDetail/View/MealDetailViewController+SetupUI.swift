//
//  MealDetailViewController+SetupUI.swift
//  Fetch_Rewards_TakeHome
//
//  Created by Boris Ofon on 12/22/22.
//

import UIKit

// MARK: - styling and the layout for the various views in the meal detail controller
extension MealDetailViewController {
    
    
    func style() {
        
        //howToMakeTitleLabel
        howToMakeTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        howToMakeTitleLabel.textAlignment = .center
        howToMakeTitleLabel.font = .boldSystemFont(ofSize: 20)
        howToMakeTitleLabel.adjustsFontForContentSizeCategory = true
        howToMakeTitleLabel.text = "How To Make"

        
        //instructionTextView
        instructionTextView.translatesAutoresizingMaskIntoConstraints = false
        instructionTextView.textAlignment = .center
        instructionTextView.font = UIFont.preferredFont(forTextStyle: .body)
        instructionTextView.isEditable = false
        instructionTextView.adjustsFontForContentSizeCategory = true
        instructionTextView.text = "Welcome to Friends Welcome to Friends Welcome to Friends Welcome to Friends Welcome to Friends Welcome to Friends"
        
        //ingredentListLabel
        ingredentListLabel.translatesAutoresizingMaskIntoConstraints = false
        ingredentListLabel.textAlignment = .center
        ingredentListLabel.font = .boldSystemFont(ofSize: 20)
        ingredentListLabel.adjustsFontForContentSizeCategory = true
        ingredentListLabel.text = "Ingredients and Measurements"
        
        //table view
        ingredentMeasurementTableView.translatesAutoresizingMaskIntoConstraints = false
      
    }
    
    
    func layout()  {
        
        view.addSubview(instructionTextView)
        view.addSubview(ingredentMeasurementTableView)
        view.addSubview(howToMakeTitleLabel)
        view.addSubview(ingredentListLabel)
        
        NSLayoutConstraint.activate([
            
            //howToMakeTitleLabel
            howToMakeTitleLabel.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 2),
            howToMakeTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // instructionTextView
            instructionTextView.topAnchor.constraint(equalToSystemSpacingBelow: howToMakeTitleLabel.bottomAnchor, multiplier: 1),
            instructionTextView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: instructionTextView.trailingAnchor, multiplier: 1),
            instructionTextView.heightAnchor.constraint(equalToConstant: 200),
            
            //ingredentListLabel
            ingredentListLabel.topAnchor.constraint(equalToSystemSpacingBelow: instructionTextView.bottomAnchor, multiplier: 2),
            ingredentListLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            //ingredentMeasurementTableView
            ingredentMeasurementTableView.topAnchor.constraint(equalToSystemSpacingBelow: ingredentListLabel.bottomAnchor, multiplier: 2),
            ingredentMeasurementTableView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: ingredentMeasurementTableView.trailingAnchor, multiplier: 2),
            ingredentMeasurementTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        
        ])
        
    }
    
}
