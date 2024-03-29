//
//  AppDelegate.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let viewController = FlightViewController()
        let viewModel = FlightViewModel()
        viewController.viewModel = viewModel
        
        let navigationController = NavigationController(rootViewController: viewController, color: .colorOnyx)
        let router = Router(rootViewController: navigationController)
        
        viewModel.router = router
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.tintColor = .white
        window?.makeKeyAndVisible()
        
        return true
    }
}
