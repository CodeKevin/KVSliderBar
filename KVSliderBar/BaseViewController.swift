//
//  BaseViewController.swift
//  KVSliderBar
//
//  Created by Kevin on 2017/8/16.
//  Copyright © 2017年 Kevin. All rights reserved.
//

import UIKit
let randColor = UIColor(red:CGFloat(Double(arc4random()%256)/255.0) , green: CGFloat(Double(arc4random()%256)/255.0), blue: CGFloat(Double(arc4random()%256)/255.0), alpha: 1.0)
class BaseViewController: UIViewController {
    public var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        label.font = UIFont.systemFont(ofSize: 80)
        label.backgroundColor = UIColor.brown
        label.textColor = UIColor.white
        label.center = self.view.center
        label.textAlignment = .center
        self.view.addSubview(label)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
