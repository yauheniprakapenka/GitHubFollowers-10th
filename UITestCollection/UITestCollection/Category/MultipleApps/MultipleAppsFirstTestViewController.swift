//
//  MultipleAppsFirstTestViewController.swift
//  UITestCollection
//
//  Created by yauheni prakapenka on 11/08/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import UIKit

class MultipleAppsFirstTestViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func buttonForFirstAppDidTap(_ sender: UIButton) {
        resultLabel.textColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        resultLabel.text = "Нажато в первом приложении"
    }
    
    @IBAction func buttonForSecondAppDidTap(_ sender: UIButton) {
        resultLabel.textColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        resultLabel.text = "Нажато во втором приложении"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
