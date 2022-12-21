//
//  MealCell.swift
//  Fetch_Rewards_TakeHome
//
//  Created by Boris Ofon on 12/21/22.
//

import UIKit

class MealCell: UITableViewCell {
    
    let mealNameLabel = UILabel()
    
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
extension MealCell {
    
    func cellStyle() {
        // disabling the selection
        self.selectionStyle = .none
        
        mealNameLabel.translatesAutoresizingMaskIntoConstraints = false
        mealNameLabel.textAlignment = .center
        mealNameLabel.font = .boldSystemFont(ofSize: 20)
    }
    
    
    func layout() {
        contentView.addSubview(mealNameLabel)
        
        NSLayoutConstraint.activate([
            
            mealNameLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            mealNameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        
        
        ])
        
    }
}


