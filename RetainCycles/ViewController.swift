//
//  ViewController.swift
//  RetainCycles
//
//  Created by Raghu Sairam on 06/01/19.
//  Copyright © 2019 Raghu Sairam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "ShowRed", style: .plain, target: self, action: #selector(handleRedController))
    }

    @objc fileprivate func handleRedController() {
        
        navigationController?.pushViewController(RedController(), animated: true)
    }

}

class Service {
    var redController: RedController?
}

class RedController: UITableViewController {
    
    let service = Service()
    
    deinit {
        print("OS removed red controller")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .red
        service.redController = self
        
    }
}

