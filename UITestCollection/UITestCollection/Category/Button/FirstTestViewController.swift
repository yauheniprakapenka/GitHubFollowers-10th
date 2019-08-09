//
//  FirstTestViewController.swift
//  UITestCollection
//
//  Created by yauheni prakapenka on 09/08/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import UIKit

class FirstTestViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func buttonWithIDDidTap(_ sender: UIButton) {
        resultLabel.text = "Тест 1 выполнен успешно"
        resultLabel.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
