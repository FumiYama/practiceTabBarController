//
//  MainTabBarController.swift
//  practiceTabBarController
//
//  Created by Fumiya Yamanaka on 2016/01/07.
//  Copyright © 2016年 Fumiya Yamanaka. All rights reserved.
//

import Foundation
import UIKit


class MainTabBarController: UITabBarController {
    var fv_firstView: FirstViewController!
    var sv_secondView: SecondViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fv_firstView = FirstViewController()
        sv_secondView = SecondViewController()
        
        fv_firstView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 1)
        sv_secondView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Favorites, tag: 2)
        
        let myTabs = NSArray(objects: fv_firstView!, sv_secondView!)
        
        self.setViewControllers(myTabs as! [UIViewController], animated: false)
    }
}