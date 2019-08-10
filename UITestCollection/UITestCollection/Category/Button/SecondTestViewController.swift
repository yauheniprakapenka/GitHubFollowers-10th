//
//  SecondTestViewController.swift
//  UITestCollection
//
//  Created by yauheni prakapenka on 09/08/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import UIKit

class SecondTestViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var buttonWithoutID: UIButton!
    
    @IBAction func buttonWithoutIDDidTap(_ sender: UIButton) {
        resultLabel.text = "Тест 2 выполнен успешно"
        resultLabel.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonWithoutID.layer.cornerRadius = 11
    }

}
