//
//  TabBarController.swift
//  ios-practica
//
//  Created by Eric Olsson on 12/27/22.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabs()
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    private func setupTabs() {
        let navigationController1 = UINavigationController(rootViewController: HeroListViewController())
        let tabImage1 = UIImage(systemName: "text.justify")!
        navigationController1.tabBarItem = UITabBarItem(title: "Hero List", image: tabImage1, tag: 0)
        
        let navigationController2 = UINavigationController(rootViewController: SettingsViewController())
        let tabImage2 = UIImage(systemName: "square.grid.3x3.topleft.filled")!
        navigationController2.tabBarItem = UITabBarItem(title: "Settings", image: tabImage2, tag: 1)
        
        viewControllers = [navigationController1, navigationController2]
    }

}
