//
//  SecondPageViewController.swift
//  TestDelegate
//
//  Created by Patato on 2018/11/26.
//  Copyright © 2018 Patato. All rights reserved.
//

import UIKit

class SecondPage: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    var delegate: SecondPageDelegate! // delegate
    var testDataTV: UITableView!
    var dataList: [String] = ["Apple", "Banana", "Cherry"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Second Page"
        
        // tableView
        self.testDataTV = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height), style: .plain)
        self.testDataTV?.backgroundColor = UIColor.white
        self.testDataTV?.delegate = self
        self.testDataTV?.dataSource = self
        self.view.addSubview(self.testDataTV!)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var testCell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if testCell == nil {
            testCell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
            testCell?.selectionStyle = UITableViewCell.SelectionStyle.none
            testCell?.textLabel?.font = UIFont.systemFont(ofSize: 30)
        }
        
        testCell?.textLabel?.text = dataList[indexPath.row]
        
        return testCell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        _ = self.navigationController?.popViewController(animated: true)
        self.delegate.secondPage(self, didSelectData: self.dataList[indexPath.row])
    }
}
