//
//  UINavigationControlExtension.swift
//  PengCode_Swift
//
//  Created by peng on 2019/12/29.
//  Copyright © 2019 peng. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    public func showCustomNavBackButton(){
        let btn = UIButton()
        btn.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        btn.setImage(UIImage.init(imageLiteralResourceName: "back_icon"), for: .normal)
        btn.addTarget(self, action: #selector(back), for: .touchUpInside)
        btn.contentEdgeInsets = UIEdgeInsets(top: 0, left: -30, bottom: 0, right: 0)
        let leftBarButtonItem = UIBarButtonItem(customView: btn)
        self.navigationItem.leftBarButtonItem = leftBarButtonItem
    }
    @objc public func back(){
        self.navigationController?.popViewController(animated: true)
    }
}
