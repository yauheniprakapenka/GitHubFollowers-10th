//
//  Follower.swift
//  GHFollowers
//
//  Created by yauheni prakapenka on 11.01.2020.
//  Copyright © 2020 yauheni prakapenka. All rights reserved.
//

import Foundation

struct Follower: Codable {
    var login: String
    var avatarUrl: String // приходит avatar_url, сконвертирует с помощью decoder.keyDecodingStrategy = .convertFromSnakeCase
}
