//
//  FiveTestViewController.swift
//  UITestCollection
//
//  Created by yauheni prakapenka on 10/08/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import UIKit

class FiveTestViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cameraButton = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(tapButton))
        cameraButton.accessibilityIdentifier = "cameraButtonID"
        self.navigationItem.rightBarButtonItem = cameraButton
    }
    
    @objc func tapButton() {
        resultLabel.text = "Тест 5 выполнен успешно"
        resultLabel.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
}
