//
//  FourTestViewController.swift
//  UITestCollection
//
//  Created by yauheni prakapenka on 10/08/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import UIKit

class FourTestViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func buttonDidTap(_ sender: UIButton) {
        let alert = UIAlertController(title: "Title", message: "This is message", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "One", style: .default, handler: { action in
            self.resultLabel.text = "Тест 4 выполнен не успешно"
            self.resultLabel.textColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        }))
        
        alert.addAction(UIAlertAction(title: "Two", style: .default, handler: { action in
            self.resultLabel.text = "Тест 4 выполнен успешно"
            self.resultLabel.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }))
        
        self.present(alert, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
