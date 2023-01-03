//
//  MealCell.swift
//  Fetch_Rewards_TakeHome
//
//  Created by Boris Ofon on 12/21/22.
//

import UIKit

class MealCell: UITableViewCell {
    
    let mealNameLabel = UILabel()
    let mealImageView = UIImageView()
    
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
        //meal image styling
        mealImageView.translatesAutoresizingMaskIntoConstraints = false
        
        //mealName styling
        mealNameLabel.translatesAutoresizingMaskIntoConstraints = false
        mealNameLabel.textAlignment = .center
        mealNameLabel.font = .boldSystemFont(ofSize: 20)
    }
    
    
    func layout() {
        contentView.addSubview(mealNameLabel)
        contentView.addSubview(mealImageView)
        
        NSLayoutConstraint.activate([
            //meal image layout
            mealImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            mealImageView.leadingAnchor.constraint(equalToSystemSpacingAfter: contentView.leadingAnchor, multiplier: 2),
            mealImageView.heightAnchor.constraint(equalToConstant: 80),
            mealImageView.widthAnchor.constraint(equalToConstant: 80),
            
            
            
            //meal name layout
            mealNameLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: mealImageView.trailingAnchor, multiplier: 2),
            mealNameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        
        
        ])
        
    }
}


