//
//  SixTestViewController.swift
//  UITestCollection
//
//  Created by yauheni prakapenka on 10/08/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import UIKit

class SixTestViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func buttonDidTap(_ sender: UIButton) {
        let alert = UIAlertController(title: "Action Sheet Title", message: "Description", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "One", style: .default, handler: { (_) in
            self.resultLabel.text = "Тест 6 выполнен успешно"
            self.resultLabel.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }))
        
        alert.addAction(UIAlertAction(title: "Two", style: .default, handler: { (_) in
            self.resultLabel.text = "Тест 6 выполнен не успешно"
            self.resultLabel.textColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        }))
        
        alert.addAction(UIAlertAction(title: "Three", style: .destructive, handler: { (_) in
            self.resultLabel.text = "Тест 6 выполнен не успешно"
            self.resultLabel.textColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        }))
        
        alert.addAction(UIAlertAction(title: "Four", style: .cancel, handler: { (_) in
            self.resultLabel.text = "Тест 6 выполнен не успешно"
            self.resultLabel.textColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        }))
        
        self.present(alert, animated: true, completion: {
        })
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
