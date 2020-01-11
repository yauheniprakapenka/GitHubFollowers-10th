 //
//  User.swift
//  GHFollowers
//
//  Created by yauheni prakapenka on 11.01.2020.
//  Copyright © 2020 yauheni prakapenka. All rights reserved.
//

import Foundation

 struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var public_gists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createdAt: String
 }
