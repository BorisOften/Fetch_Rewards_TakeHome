//
//  AppDelegate.swift
//  Fetch_Rewards_TakeHome
//
//  Created by Boris Ofon on 12/21/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let mealListTableViewController = MealListTableViewController()
    var navigationController: UINavigationController?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        navigationController = UINavigationController(rootViewController: mealListTableViewController)
        
        window?.rootViewController = navigationController
        
        style()
        
        return true
    }
}

// stying the navigation controller
extension AppDelegate {
    
    func style(){
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}


