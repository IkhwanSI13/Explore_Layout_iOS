//
//  tesViewController.swift
//  explore_layout
//
//  Created by cartenz on 09/09/20.
//  Copyright © 2020 yukngoding. All rights reserved.
//

import UIKit

class TabbarProgController: UITabBarController {

    var menuOne:Menu1ViewController?
    var menuTwo:Menu2ViewController?
    var subViewController: [UIViewController] = []
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        menuOne = Menu1ViewController(nibName: "Menu1ViewController", bundle: nil)
//        menuTwo = Menu2ViewController(nibName: "Menu2ViewController", bundle: nil)
//
//        let navOneController = UINavigationController(rootViewController: menuOne!)
//        navOneController.title = "Menu One"
//        navOneController.tabBarItem.image = UIImage(named: "challenges")
//
//        let navTwoController = UINavigationController(rootViewController: menuTwo!)
//        navTwoController.title = "Menu Two"
//        navTwoController.tabBarItem.image = UIImage(named: "challenges")
//
//        viewControllers = [navOneController , navTwoController]
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

        menuOne = Menu1ViewController(nibName: "Menu1ViewController", bundle: nil)
        menuTwo = Menu2ViewController(nibName: "Menu2ViewController", bundle: nil)

        subViewController.append(menuOne!)
        subViewController.append(menuTwo!)

        menuOne?.tabBarItem = UITabBarItem(title: "One", image: UIImage(named: "challenges"),tag: 0)
        menuTwo?.tabBarItem = UITabBarItem(title: "Two", image: UIImage(named: "challenges"),tag: 1)

        self.setViewControllers(subViewController, animated: true)

        self.selectedIndex=0
        self.selectedViewController=menuOne
    }

    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 0:
            print("0")
        case 1:
            print("1")
        default:
            print("0")
        }
    }

}
