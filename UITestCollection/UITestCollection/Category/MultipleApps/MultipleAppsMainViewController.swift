//
//  MultipleAppsFirstViewController.swift
//  UITestCollection
//
//  Created by yauheni prakapenka on 11/08/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import UIKit

class MultipleAppsMainViewController: UIViewController {
    
    @IBOutlet weak var firstTestButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        firstTestButton.titleLabel?.contentScaleFactor = 0.5
        firstTestButton.titleLabel?.adjustsFontSizeToFitWidth = true
    }
    
}
