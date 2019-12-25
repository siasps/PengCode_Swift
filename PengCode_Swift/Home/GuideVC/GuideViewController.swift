//
//  GuideViewController.swift
//  PengCode_Swift
//
//  Created by peng on 2019/12/25.
//  Copyright © 2019 peng. All rights reserved.
//

import UIKit

class GuideViewController: UIViewController {
    
    var scrollView :UIScrollView!
    var pageControl :UIPageControl!
    var images :NSMutableArray!
    var imageView :UIImageView!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.wjUISettings()

        // Do any additional setup after loading the view.
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.wjNavgationSettings()
    }
    
    func wjUISettings() {
        
        self.images = NSMutableArray(capacity: 0)
        let imageArray = NSArray(contentsOfFile: Bundle.main.path(forResource: "data", ofType: "plist")!)
        if let imageArray = imageArray  {
            self.images.addObjects(from: imageArray as Array)
        }
        let imageCount:Double  = Double(self.images.count)
        let screenW = UIScreen.main.bounds.size.width
        let screenH = UIScreen.main.bounds.size.height
        
        let scrollView = UIScrollView()
        scrollView.frame = CGRect(x: 0, y: 0, width: screenW, height: screenH)
        scrollView.isPagingEnabled = true
        scrollView.bounces = false
        scrollView.contentSize = CGSize(width: Double(screenW) * imageCount, height: 0)
        scrollView.showsVerticalScrollIndicator = true
        scrollView.showsHorizontalScrollIndicator = true
        scrollView.backgroundColor = UIColor.brown
        scrollView.delegate = self
        scrollView.backgroundColor = .red
        self.view.addSubview(scrollView)
        self.scrollView = scrollView
        
        for i in 0..<Int(imageCount) {
            let imageView = UIImageView()
            imageView.image = UIImage(named: "gagi\(i + 1)")
            imageView.frame = CGRect(x: Double(screenW) * Double(i), y: 0, width: Double(screenW), height: Double(screenH))
            imageView.isUserInteractionEnabled = true
            imageView.contentMode = UIImageView.ContentMode.scaleAspectFill
            imageView.clipsToBounds = true
            scrollView.addSubview(imageView)
            self.imageView = imageView
            
        }
        
        let pageControl = UIPageControl()
        pageControl.frame = CGRect(x: 137.5, y: 600, width: 100, height: 20)
        pageControl.isUserInteractionEnabled = false
        pageControl.hidesForSinglePage = true
        pageControl.currentPage = 0
        pageControl.numberOfPages = Int(imageCount)
        self.view.addSubview(pageControl)
        self.pageControl = pageControl
        
    }
    
    func wjNavgationSettings()  {
        self.navigationController?.navigationBar.isHidden = false
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


extension GuideViewController : UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page = Int(self.scrollView.contentOffset.x / scrollView.frame.size.width + 0.5)
        self.pageControl.currentPage = page
        
        if page == self.images.count - 1 {
            let btn = UIButton(type: .custom)
            btn.frame = CGRect(x: 112.5, y: 500, width: 150.0, height: 50.0)
            btn.layer.masksToBounds = true
            btn.layer.cornerRadius = 10
            btn.backgroundColor = UIColor.cyan
            btn.setTitle("点击进行跳转", for: .normal)
            btn.setTitleColor(UIColor.black, for: .normal)
            btn.addTarget(self, action: #selector(GuideViewController.wjModifyRootVCAction(_:)), for: .touchUpInside)
            self.imageView.addSubview(btn)
        }
    }
}


extension GuideViewController {
    // 修改根控制器的按钮点击事件
    @objc func wjModifyRootVCAction(_ btn : UIButton) {
        let vc = ViewController()
        vc.navigationController?.navigationBar.isHidden = false
        // 把已经出现过的引导页的结果记录到本地
        UserDefaults.standard.set(true, forKey: "isShowGuidePage")
        // 这个地方完全可以将app的version也存到本地去，然后在每次进入到app的时候就判断版本号
        let app = AppDelegate()
        let nav = UINavigationController(rootViewController: vc)
        app.window?.rootViewController = nav
        self.present(nav, animated: true, completion: nil)
        
    }
}
