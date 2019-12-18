//
//  TabBarViewController.swift
//  PengCode_Swift
//
//  Created by peng on 2019/12/18.
//  Copyright © 2019 peng. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.red], for: UIControl.State.normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.blue], for: UIControl.State.selected)
        
        
        if #available(iOS 13.0, *) {
            let array = self.tabBar.items
            for item:UITabBarItem in array! {
                item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.red], for: UIControl.State.selected)
                item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.orange], for: UIControl.State.normal)
                
                let uitabApp:UITabBarAppearance = UITabBarAppearance()
                uitabApp.stackedLayoutAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.cyan]
                uitabApp.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.orange]
                item.standardAppearance = uitabApp
            }
        }
        
     
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
