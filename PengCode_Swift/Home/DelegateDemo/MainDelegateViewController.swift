//
//  MainDelegateViewController.swift
//  PengCode_Swift
//
//  Created by peng on 2019/12/19.
//  Copyright © 2019 peng. All rights reserved.
//

import UIKit

class MainDelegateViewController: UIViewController {

    @IBOutlet weak var buttonHeight: NSLayoutConstraint!
    @IBOutlet weak var button1x: NSLayoutConstraint!
    @IBOutlet weak var button2x: NSLayoutConstraint!
    @IBOutlet weak var button3x: NSLayoutConstraint!
    @IBOutlet weak var buttonWitdth: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func updateViewConstraints() {
        autoArrangeBoxWithConstraints(array: [button1x,button2x,button3x], width: buttonHeight.constant)
        super.updateViewConstraints()
    }
    
    func autoArrangeBoxWithConstraints(array:[NSLayoutConstraint],width:CGFloat) {
        let step:CGFloat = (self.view.frame.size.height - 64 - 39 - (width * CGFloat(array.count))) / CGFloat(array.count + 1)
        for i:NSLayoutConstraint in array {
            i.constant = step
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
