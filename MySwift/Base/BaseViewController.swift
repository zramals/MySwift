//
//  BaseViewController.swift
//  MySwift
//
//  Created by zramals on 16/2/23.
//  Copyright © 2016年 ikang. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    //set common backgroundColor
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
    }
    
    override func viewWillAppear(animated:Bool){
        super.viewWillAppear(animated)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
