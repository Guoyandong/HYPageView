//
//  ViewController.swift
//  HYPageView
//
//  Created by 郭严东 on 2019/4/29.
//  Copyright © 2019 guoyandong. All rights reserved.
//

import UIKit
/*
 private : 私有
 fileprivate :
 internel : 默认
 public :
 open :
 */
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    //MARK:- 属性
    
    //MARK:- 重写的函数
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tableview = UITableView()
        tableview.frame = view.frame
        tableview.dataSource = self
        tableview.delegate = self
        view.addSubview(tableview)
        
    }

    //MARK:- UITableViewCell的数据源/代理函数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "CellID"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
        }
        
        // ?.  :可选链  赋值
        cell?.textLabel?.text = "测试数据:\(indexPath.row)"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}

