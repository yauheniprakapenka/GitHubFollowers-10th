//
//  thirdTestViewController.swift
//  UITestCollection
//
//  Created by yauheni prakapenka on 09/08/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import UIKit

class ButtonThirdTestViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func firstButtonDidTap(_ sender: UIButton) {
        resultLabel.text = "Тест 3 выполнен успешно"
        resultLabel.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
    
    @IBAction func secondButtonDidTap(_ sender: UIButton) {
        resultLabel.text = "Тест 3 выполнен не успешно"
        resultLabel.textColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    }
    
    @IBAction func thirdButtonDidTap(_ sender: UIButton) {
        resultLabel.text = "Тест 3 выполнен не успешно"
        resultLabel.textColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
