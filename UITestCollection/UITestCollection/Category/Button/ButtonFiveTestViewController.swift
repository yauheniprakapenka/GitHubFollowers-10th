//
//  FiveTestViewController.swift
//  UITestCollection
//
//  Created by yauheni prakapenka on 10/08/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import UIKit

class ButtonFiveTestViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rightBarButton = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(tapButton))
//        let rightBarButton = UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: #selector(tapButton))
        self.navigationItem.rightBarButtonItem = rightBarButton
    }
    
    @objc func tapButton() {
        resultLabel.text = "Тест 5 выполнен успешно"
        resultLabel.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        
        
    }
}
