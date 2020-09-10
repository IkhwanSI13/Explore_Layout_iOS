//
//  AppDelegate.swift
//  explore_layout
//
//  Created by cartenz on 08/09/20.
//  Copyright © 2020 yukngoding. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //ignore the storyboard
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible() //
        
        let tryController = TryController(collectionViewLayout: UICollectionViewFlowLayout())
        let mainController = MainController(nibName:"MainController", bundle:nil)
        window?.rootViewController = UINavigationController(rootViewController: mainController)
        //window?.rootViewController = TabbarProgController()

        return true
    }

}

//let appCoordinator = AppCoordinator(window!)
//appCoordinator.start()

