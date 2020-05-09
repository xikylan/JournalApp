//
//  MainTabBarVC.swift
//  Journal
//
//  Created by Lan Nguyen on 5/8/20.
//  Copyright © 2020 Lan Nguyen. All rights reserved.
//

import UIKit

class MainTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light

        tabBar.tintColor = .black
        let appearance = tabBar.standardAppearance
        appearance.shadowImage = nil
        appearance.shadowColor = nil
        tabBar.standardAppearance = appearance;

        let journalCollectionNC = UINavigationController()
        let profileSettingsNC = UINavigationController()

        // Do any additional setup after loading the view.
        let journalCollectionVC = JournalCollectionVC()
        journalCollectionVC.tabBarItem.title = "Journal"
        journalCollectionVC.tabBarItem.image = UIImage(named: "book")

        let profileSettingsVC = ProfileSettingsVC()

        profileSettingsVC.tabBarItem.title = "Profile"
        profileSettingsVC.tabBarItem.image = UIImage(named: "person")

        journalCollectionNC.viewControllers = [journalCollectionVC]
        profileSettingsNC.viewControllers = [profileSettingsVC]

        // embed a tableView inside a navigationController
        viewControllers = [journalCollectionNC, profileSettingsNC]

    }


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
