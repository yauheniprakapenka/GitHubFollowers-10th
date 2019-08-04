//
//  ButtonTestViewViewController.swift
//  UITestCollection
//
//  Created by yauheni prakapenka on 04/08/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import UIKit

class ButtonTestViewViewController: UIViewController {
    
    @IBOutlet weak var numberOneLabel: UILabel!
    @IBOutlet weak var numberTwoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Tap a button"
    }
    
    @IBAction func buttonWithIdentifierButton(_ sender: UIButton) {
        numberOneLabel.text = "#1 нажато"
    }
    
    @IBAction func buttonWithoutIdentifierButton(_ sender: UIButton) {
        numberTwoLabel.text = "#2 нажато"
    }
    

}
