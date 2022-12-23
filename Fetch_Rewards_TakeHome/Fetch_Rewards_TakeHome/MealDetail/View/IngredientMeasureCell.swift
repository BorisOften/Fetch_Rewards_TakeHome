//
//  Ingredient+measureCell.swift
//  Fetch_Rewards_TakeHome
//
//  Created by Boris Ofon on 12/22/22.
//

import UIKit

class IngredientMeasurementCell: UITableViewCell {
    
    let ingredientLabel = UILabel()
    let measurementLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        cellStyle()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



// styling and layout
extension IngredientMeasurementCell {
    
    func cellStyle() {
        // disabling the selection
        self.selectionStyle = .none
        
        contentView.addSubview(ingredientLabel)
        contentView.addSubview(measurementLabel)
        
        //ingredientLabel
        ingredientLabel.translatesAutoresizingMaskIntoConstraints = false
        ingredientLabel.textAlignment = .left
        ingredientLabel.font = .boldSystemFont(ofSize: 20)
        ingredientLabel.text = "Ingredeint"
        
        //measurementLabel
        measurementLabel.translatesAutoresizingMaskIntoConstraints = false
        measurementLabel.textAlignment = .left
        measurementLabel.font = .boldSystemFont(ofSize: 20)
        measurementLabel.text = "measurementLabel"
    }
    
    
    func layout() {
        contentView.addSubview(ingredientLabel)
        
        NSLayoutConstraint.activate([
            
            //ingredientLabel
            ingredientLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: contentView.leadingAnchor, multiplier: 2),
            
            //measurementLabel
            contentView.trailingAnchor.constraint(equalToSystemSpacingAfter: measurementLabel.trailingAnchor, multiplier: 2)
            
        ])
        
    }
}
