//
//  TabViewController.swift
//  locker
//
//  Created by Eric Giannini on 5/1/17.
//  Copyright © 2017 Unicorn Mobile, LLC. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.viewControllers = [initialTabBar, finalTabBar]
    }
    
    lazy public var initialTabBar: TaskViewController = {
        
        let initialTabBar = TaskViewController()
        
        let defaultImage = UIImage(named: "defaultImage-initialTabBar.png")
        
        let selectedImage = UIImage(named: "selectedImage-initialTabBar.png")
        
        let tabBarItem = UITabBarItem(title: "Tasks", image: defaultImage, selectedImage: selectedImage)
        
        initialTabBar.tabBarItem = tabBarItem

        
        return initialTabBar
    }()
    
    lazy public var finalTabBar: OwnTaskViewController = {
        
        let finalTabBar = OwnTaskViewController()
        
        let defaultImage = UIImage(named: "defaultImage-finalTabBar.png")
        
        let selectedImage = UIImage(named: "selectedImage-finalTabBar.png")
        
        let tabBarItem = UITabBarItem(title: "My Tasks", image: defaultImage, selectedImage: selectedImage)
        
        finalTabBar.tabBarItem = tabBarItem
        
        return finalTabBar
    }()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension TabViewController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }
    
}
