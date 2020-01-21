//
//  GFError.swift
//  GHFollowers
//
//  Created by yauheni prakapenka on 12.01.2020.
//  Copyright © 2020 yauheni prakapenka. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername        = "This user created an invalid request."
    case unableToComplete       = "Unable to complete request. Please check internet connection."
    case invalidResponse        = "Invalid response from the server."
    case invalidData            = "The data received from the server was invalid."
    case dataProcessingError    = "Data processing error."
}
