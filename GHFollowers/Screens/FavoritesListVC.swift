//
//  FavoritesListVC.swift
//  GHFollowers
//
//  Created by yauheni prakapenka on 08.01.2020.
//  Copyright © 2020 yauheni prakapenka. All rights reserved.
//

import UIKit

class FavoritesListVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        PersistanceManager.retrieveFavorites { result in
            switch result {
                
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                break
            }
        }
    }
}
