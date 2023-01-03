//
//  MealDetailViewController.swift
//  Fetch_Rewards_TakeHome
//
//  Created by Boris Ofon on 12/21/22.
//

import UIKit

class MealDetailViewController: UIViewController {

    let howToMakeTitleLabel = UILabel()
    let instructionTextView = UITextView()
    let ingredentListLabel = UILabel()
    let ingredentMeasurementTableView = UITableView()
    
    let reuseID = "MealDetailCell"
    
    // i could make this an optional but i can garantee that
    // it will not be nill because the only way to get to this view controller
    // is if the recipe has a meal Id
    var allMealInformation: MealInfo!
    
    var mealInformation: MealRecipeContent?
    
    // since the indregients and the measurements gotten from the API are not in an array i create these two arrays to store the them here so it would be easier to set up in the tableview
    
    var indregients = [String?]()
    var measurements = [String?]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        
        setupTableView()
        
        updateUI()
        getInstructionsAndMesurements()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        getRecipeDetails()
        updateUI()
    }
}


// MARK: - ingredentAndMeasurementTableView data source and delegate
extension MealDetailViewController : UITableViewDataSource , UITableViewDelegate{
    
    func setupTableView() {
        ingredentMeasurementTableView.register(IngredientMeasurementCell.self, forCellReuseIdentifier: reuseID)

        ingredentMeasurementTableView.dataSource = self
        ingredentMeasurementTableView.delegate = self
        
        ingredentMeasurementTableView.estimatedRowHeight = 50
        ingredentMeasurementTableView.rowHeight = 50
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // made a funcitopn to only return the non null count
        // if mealInformation is null as it will be before the network call return zero
        return mealInformation?.getIndregentCount() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseID, for: indexPath) as! IngredientMeasurementCell
        
        cell.measurementLabel.text = measurements[indexPath.row]
        cell.ingredientLabel.text = indregients[indexPath.row]
        
        return cell
    }
}

// MARK: - Networking
extension MealDetailViewController {
    
    func getRecipeDetails() {
        
        NetworkManager().getRecipeInformation(id: allMealInformation.idMeal) { (result) in
            
            switch  result {
                
            case .success(let mealInfo):
                self.mealInformation = mealInfo.meals[0]
                self.getInstructionsAndMesurements()
                
                DispatchQueue.main.async {
                    self.ingredentMeasurementTableView.reloadData()
                    self.updateUI()
                }
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

extension MealDetailViewController {
    
    func updateUI() {
        navigationItem.largeTitleDisplayMode = .never
        navigationItem.title = allMealInformation.strMeal
        
        instructionTextView.text = mealInformation?.strInstructions
    }
}

extension MealDetailViewController {
    
    func getInstructionsAndMesurements()  {
        indregients = [
            mealInformation?.strIngredient1, mealInformation?.strIngredient2,mealInformation?.strIngredient3,mealInformation?.strIngredient4, mealInformation?.strIngredient5,mealInformation?.strIngredient6,mealInformation?.strIngredient7, mealInformation?.strIngredient8,mealInformation?.strIngredient9,mealInformation?.strIngredient10, mealInformation?.strIngredient11,mealInformation?.strIngredient12,mealInformation?.strIngredient13, mealInformation?.strIngredient14,mealInformation?.strIngredient15,mealInformation?.strIngredient16, mealInformation?.strIngredient17,mealInformation?.strIngredient18, mealInformation?.strIngredient20
        ]
        
        measurements = [
            mealInformation?.strMeasure1, mealInformation?.strMeasure2,mealInformation?.strMeasure3,mealInformation?.strMeasure4, mealInformation?.strMeasure5,mealInformation?.strMeasure6,mealInformation?.strMeasure7, mealInformation?.strMeasure8,mealInformation?.strMeasure9,mealInformation?.strMeasure10, mealInformation?.strMeasure11,mealInformation?.strMeasure12,mealInformation?.strMeasure13, mealInformation?.strMeasure14,mealInformation?.strMeasure15,mealInformation?.strMeasure16, mealInformation?.strMeasure17,mealInformation?.strMeasure18, mealInformation?.strMeasure20
        ]
    }
}

