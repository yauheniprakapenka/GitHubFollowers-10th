//
//  UserinfoVC.swift
//  GHFollowers
//
//  Created by yauheni prakapenka on 19.01.2020.
//  Copyright © 2020 yauheni prakapenka. All rights reserved.
//

import UIKit

class UserinfoVC: UIViewController {
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        
        print(username)
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }
    
}
