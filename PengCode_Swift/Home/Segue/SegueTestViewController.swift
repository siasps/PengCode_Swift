//
//  SegueTestViewController.swift
//  PengCode_Swift
//
//  Created by peng on 2019/12/19.
//  Copyright © 2019 peng. All rights reserved.
//

import UIKit

class SegueTestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func button3Click(_ sender: Any) {
        let storyBoard = UIStoryboard.init(name: "SegueStoryboard", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "second")
        self.navigationController?.pushViewController(vc, animated: true)
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
