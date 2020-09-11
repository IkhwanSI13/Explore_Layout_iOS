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
        
        
        if #available(iOS 13, *) {
            // do only pure app launch stuff, not interface stuff
        } else {
            //ignore the storyboard

//            self.window = UIWindow()
//            self.window = UIWindow(frame: UIScreen.main.bounds)
//            //let vc = TryController(collectionViewLayout: UICollectionViewFlowLayout())
//            let vc = MainController(nibName:"MainController", bundle:nil)
//            self.window!.rootViewController = vc
//            self.window!.makeKeyAndVisible()
            window = UIWindow(frame: UIScreen.main.bounds)
            window?.makeKeyAndVisible() //
            
            let tryController = TryController(collectionViewLayout: UICollectionViewFlowLayout())
            let mainController = MainController(nibName:"MainController", bundle:nil)
            window?.rootViewController = UINavigationController(rootViewController: mainController)
            //window?.rootViewController = TabbarProgController()
        }

        
        return true
    }

}

//let appCoordinator = AppCoordinator(window!)
//appCoordinator.start()

