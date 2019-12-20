//
//  SwiftZhouQiViewController.swift
//  PengCode_Swift
//
//  Created by peng on 2019/12/20.
//  Copyright © 2019 peng. All rights reserved.
//

import UIKit

class SwiftZhouQiViewController: UIViewController {

    var dataSource:[String:String]? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        print(dataSource!)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(dataSource as Any)
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
