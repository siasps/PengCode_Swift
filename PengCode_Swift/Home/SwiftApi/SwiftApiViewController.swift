//
//  SwiftApiViewController.swift
//  PengCode_Swift
//
//  Created by peng on 2019/12/20.
//  Copyright © 2019 peng. All rights reserved.
//

import UIKit

class SwiftApiViewController: UIViewController {
    
    var url:NSURL? = NSURL(string: "http://www.baidu.com")
    
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
        
        /*
         断言和先决条件的不同点是，他们什么时候进行状态检测：断言仅在调试环境运行，而先决条件则在调试环境和生产环境中运行。在生产环境中，断言的条件将不会进行评估。
         */
        
        /*
         //断言：age >= 0为false，断言被触发，终止应用。
         let age = -3
         assert(age < 0, "A person's age cannot be less than zero")
         assertionFailure("A person's age can't be less than zero.")
         
         // 先决条件
         precondition(age < 0, "A person's age can't be less than zero.")
         assertionFailure("A person's age can't be less than zero.")
         */
        
        
        //间隔固定元素
        let minutes = 60
        let minuteInterval = 5
        for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
            // render the tick mark every 5 minutes (0, 5, 10, 15 ... 45, 50, 55)
            print(tickMark)
        }
        
        for tickMark in stride(from: 0, through: minutes, by: minuteInterval){
            print(tickMark)
        }
        
        let finalSquare = 5
        let board = [Int](repeating: 0, count: finalSquare + 1)
        print("---\(board)")
        
        func stepForward(_ input: Int) -> Int {
            return input + 1
        }
        func stepBackward(_ input: Int) -> Int {
            return input - 1
        }
        
        func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
            return backwards ? stepBackward : stepForward
        }
        
        var currentValue = 3
        let moveNearerToZero = chooseStepFunction(backwards: currentValue > 0)
        while currentValue != 0 {
            print("\(currentValue)... ")
            currentValue = moveNearerToZero(currentValue)
        }
        
        //排序
        let names = ["AT", "AE", "D", "S", "BE"]
        let result = names.sorted(by:backwords)
        let result1 = names.sorted(by: {(a:String,b:String)->Bool in return a>b})
        let result2 = names.sorted(by: {$0 > $1})
        print(result)
        print(result1)
        print(result2)
        
        self.structInitCreate()//创建结构体
        
        //KVO 添加监听
        self.addObserver(self, forKeyPath: "title", options: NSKeyValueObservingOptions.old, context: nil)

    }
    
    //监听回调
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "title" {
            print("----------\(String(describing: change))-----\(String(describing: context))")
        }else{
            print("----------\(String(describing: change))-----\(String(describing: context))")
        }
    }
    
    func backwords(s1:String,s2:String) -> Bool {
        return s1>s2
    }
    
    @IBAction func buttonClick(_ sender: Any) {
        //performSegue(withIdentifier: "push.zhouqi", sender: nil)
        
        self.title = "KVO"//修改被监听的属性值
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
    
    func structInitCreate() {
        let twoByTwo = Size(width: 2.0, height: 2.0)
        print("--\(twoByTwo.height)---\(twoByTwo.width)")
    }
    
}

struct Size {
    var width = 0.0 , height = 0.0
}
