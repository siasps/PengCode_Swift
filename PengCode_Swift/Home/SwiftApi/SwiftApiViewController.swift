//
//  SwiftApiViewController.swift
//  PengCode_Swift
//
//  Created by peng on 2019/12/20.
//  Copyright © 2019 peng. All rights reserved.
//

import UIKit

class SwiftApiViewController: UIViewController {
    
    let url:NSURL? = NSURL(string: "http://www.baidu.com")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let array = ["12","13","14","15","16","17","18","19"]
        for index in 0..<array.count {
            let string = array[index]
            print(string)
        }
        
        if url != nil {
            let request = NSURLRequest(url: url! as URL)
            print(request)
        }
        
        if let url:NSURL = url {
            let request = NSURLRequest(url: url as URL)
            print(request)
        }
        
    }
    
    @IBAction func buttonClick(_ sender: Any) {
        //performSegue(withIdentifier: "push.zhouqi", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        if segue.destination.isKind(of: SwiftZhouQiViewController.classForCoder()) {
            let vc:SwiftZhouQiViewController = segue.destination as! SwiftZhouQiViewController
            let c:CGRect = self.view.frame
            vc.dataSource = ["nsme":c.debugDescription]
            print(vc)
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
