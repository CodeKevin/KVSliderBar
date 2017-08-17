//
//  ViewController.swift
//  KVSliderBar
//
//  Created by Kevin on 2017/8/15.
//  Copyright © 2017年 Kevin. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    var vcs = [UIViewController]()
    var titles = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
        let kvView = KVBarContentView(frame: CGRect(x: 0, y: 20, width: self.view.frame.width, height: self.view.frame.height - 20),titles: titles, childVCs: vcs, parentVC: self)
        self.view.addSubview(kvView)
        // Do any additional setup after loading the view, typically from a nib.
    }
    func initData() {
        titles = ["News","Sports","Economy","Entertainment","Politics","News","Sports","Economy","Entertainment","Politics","News","Sports","Economy","Entertainment","Politics"]
        for (index,title) in titles.enumerated() {
            let vc = BaseViewController()
            vc.view.backgroundColor = UIColor(red:CGFloat(Double(arc4random()%256)/255.0) , green: CGFloat(Double(arc4random()%256)/255.0), blue: CGFloat(Double(arc4random()%256)/255.0), alpha: 1.0)
            print(title)
            vc.label.text = "\(index)"
            vcs.append(vc)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

