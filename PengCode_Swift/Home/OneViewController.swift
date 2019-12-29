//
//  OneViewController.swift
//  PengCode_Swift
//
//  Created by peng on 2019/12/19.
//  Copyright © 2019 peng. All rights reserved.
//

import UIKit

class OneViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:HomeCustomCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! HomeCustomCell
        switch indexPath.row {
        case 0:
            cell.titleLabel.text = "代理协议 && 约束代码修改"
            break
        case 1:
            cell.titleLabel.text = "等宽高自适应间距 && 三种跳转"
            break
        case 2:
            cell.titleLabel.text = "奇技"
            break
        case 3:
            cell.titleLabel.text = "Guide Scrollview"
        default:
            break
            
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            performSegue(withIdentifier: "push.delegate", sender: nil)
            break
            
        case 1:
            performSegue(withIdentifier: "push.segue", sender: nil)
            break
            
        case 2:
            performSegue(withIdentifier: "push.swiftApi", sender: nil)
            break
        case 3:
            performSegue(withIdentifier: "push.guide", sender: nil)
        default:
            break
            
        }
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let btn = UIButton()
        btn.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        btn.setImage(UIImage.init(imageLiteralResourceName: "back_icon"), for: .normal)
        btn.addTarget(self, action: #selector(back), for: .touchUpInside)
        btn.contentEdgeInsets = UIEdgeInsets(top: 0, left: -30, bottom: 0, right: 0)
        let leftBarButtonItem = UIBarButtonItem(customView: btn)
        
        self.navigationItem.backBarButtonItem = leftBarButtonItem
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


class HomeCustomCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("======")
    }
}
