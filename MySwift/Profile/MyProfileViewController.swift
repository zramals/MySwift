//
//  MyProfileViewController.swift
//  MySwift
//
//  Created by zramals on 16/2/23.
//  Copyright © 2016年 ikang. All rights reserved.
//

import UIKit

class MyProfileViewController: BaseViewController {
    // MARK: LAZY LOAD
    lazy var MyProfileTableView: UITableView = {
        let view = UITableView()
        view.frame = CGRectMake(0, 0,SCREEN_WIDTH,SCREEN_HEIGHT-SCREEN_NAVIGATION_HEIGHT)
        view.dataSource = self
        view.delegate = self
        view.separatorStyle = UITableViewCellSeparatorStyle.None
        return view
    }()

    
    
    // MARK: LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("init MyProfileViewController \(self)")
        title = NSLocalizedString("MyProfile", comment: "")
        
        buildUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}

extension MyProfileViewController: UITableViewDataSource, UITableViewDelegate{
    var dataArray :NSArray{
        return ["我","是","测","试","数据"]
    }
    // MARK: BUILD UI
    func buildUI(){
        self.view.addSubview(MyProfileTableView)
    }
    
    // MARK: TABLEVIEW DELEGATE
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("MyProfileViewController tableview numberOfRowsInSection entry")
        return dataArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = dataArray[indexPath.row] as? String
        return cell
    }
    


}
