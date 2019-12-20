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
            
        default:
            break
            
        }
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
