//
//  NewButtonViewController.swift
//  UITestCollection
//
//  Created by yauheni prakapenka on 09/08/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import UIKit

class NewButtonViewController: UIViewController {
    
    @IBOutlet weak var firstTestButton: UIButton!
    @IBOutlet weak var secondTestButton: UIButton!
    @IBOutlet weak var thirdTestButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstTestButton.titleLabel?.minimumScaleFactor = 0.5
        firstTestButton.titleLabel?.adjustsFontSizeToFitWidth = true
        
        secondTestButton.titleLabel?.minimumScaleFactor = 0.5
        secondTestButton.titleLabel?.adjustsFontSizeToFitWidth = true
        
        thirdTestButton.titleLabel?.minimumScaleFactor = 0.5
        thirdTestButton.titleLabel?.adjustsFontSizeToFitWidth = true
    }


}
