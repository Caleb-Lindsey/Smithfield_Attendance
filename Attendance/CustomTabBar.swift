//
//  CustomTabBar.swift
//  Smithfield Attendance
//
//  Created by Caleb Lindsey on 5/19/17.
//  Copyright © 2017 KlubCo. All rights reserved.
//

import UIKit

class CustomTabBar : UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Setup controllers
        let serviceTab = ServiceTab()
        let serviceNav = UINavigationController(rootViewController: serviceTab)
        serviceNav.tabBarItem.title = "Service"
        
        //Array of viewcontrollers
        viewControllers = [serviceNav]
        
    }
    
}
