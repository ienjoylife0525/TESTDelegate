//
//  SecondPageViewController.swift
//  TestDelegate
//
//  Created by Patato on 2018/11/26.
//  Copyright © 2018 Patato. All rights reserved.
//

import UIKit

class SecondPage: UIViewController{
    
    
    var delegate: SecondPageDelegate! // delegate
    var testDataTV: UITableView!
    var dataList: [String] = ["Apple", "Banana", "Cherry"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Second Page"
    }
    
}
