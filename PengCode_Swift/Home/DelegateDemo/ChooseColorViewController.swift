//
//  ChooseColorViewController.swift
//  PengCode_Swift
//
//  Created by peng on 2019/12/19.
//  Copyright © 2019 peng. All rights reserved.
//

import UIKit

class ChooseColorViewController: UIViewController {
 
    

    public weak var delegate:OneProtocol? = nil
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func chooseGreen(_ sender: Any) {
        delegate?.chooseBackgroundColor(backColor: UIColor.green)
    }
    
    @IBAction func chooseOrigin(_ sender: Any) {
        delegate?.chooseBackgroundColor(backColor: UIColor.orange)
    }
    @IBAction func chooseRed(_ sender: Any) {
        delegate?.chooseBackgroundColor(backColor: UIColor.red)
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
