//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by yauheni prakapenka on 08.01.2020.
//  Copyright © 2020 yauheni prakapenka. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}