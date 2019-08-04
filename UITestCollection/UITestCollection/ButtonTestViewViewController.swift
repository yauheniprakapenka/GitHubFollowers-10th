//
//  ButtonTestViewViewController.swift
//  UITestCollection
//
//  Created by yauheni prakapenka on 04/08/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import UIKit

class ButtonTestViewViewController: UIViewController {
    
    @IBOutlet weak var testOneLabel: UILabel!
    @IBOutlet weak var testTwoLabel: UILabel!
    @IBOutlet weak var testThreeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Tap a button"
    }
    
    @IBAction func testOneButtonWithIdentifierButton(_ sender: UIButton) {
        testOneLabel.text = "#1 успешно"
    }
    
    @IBAction func testTwoButtonWithoutIdentifierButton(_ sender: UIButton) {
        testTwoLabel.text = "#2 успешно"
    }
    
    @IBAction func testThreeFirstButtonWithSomeName(_ sender: UIButton) {
        testThreeLabel.textColor = #colorLiteral(red: 0.1552240252, green: 0.7857220769, blue: 0.3155761957, alpha: 1)
        testThreeLabel.text = "#3 успешно"
    }
    
    @IBAction func testThreeSecondButtonWithSomeName(_ sender: UIButton) {
        testThreeLabel.textColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        testThreeLabel.text = "#3 не успешно"
    }
    
    

}
