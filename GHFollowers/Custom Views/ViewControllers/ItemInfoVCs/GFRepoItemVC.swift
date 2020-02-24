//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by yauheni prakapenka on 24.02.2020.
//  Copyright © 2020 yauheni prakapenka. All rights reserved.
//

import UIKit

class GFRepoItemVC: GFIteminfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItem()
    }
    
    private func configureItem() {
        itemInfoViewOne.set(itemInfoType: .repos, with: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, with: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
}
