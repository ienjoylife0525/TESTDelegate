//
//  FirstPageViewController.swift
//  TestDelegate
//
//  Created by Patato on 2018/11/26.
//  Copyright © 2018 Patato. All rights reserved.
//

import UIKit

class FirstPageViewController: UIViewController  {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "FirstPage"
        self.view.backgroundColor = UIColor.white
        
        //換頁Button繪製
        let switchBtn: UIButton = UIButton()
        switchBtn.frame = CGRect(x: self.view.frame.size.width / 2 - 100, y: self.view.frame.size.height / 2 - 25, width: 200, height: 50)
        switchBtn.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        switchBtn.setTitle("換頁", for: .normal)
        switchBtn.setTitleColor(UIColor.white, for: .normal)
        switchBtn.layer.cornerRadius = 10
        switchBtn.backgroundColor = UIColor.darkGray
        switchBtn.addTarget(self, action: #selector(FirstPageViewController.onClickToSecondPage(_:)), for: UIControl.Event.touchUpInside)
        self.view.addSubview(switchBtn)
        
    }
    
    //切換頁
    @objc func onClickToSecondPage(_ sender: UIButton) {
    }
    
    
    
}
