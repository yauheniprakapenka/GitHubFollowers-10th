//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by yauheni prakapenka on 24.02.2020.
//  Copyright © 2020 yauheni prakapenka. All rights reserved.
//

import Foundation

extension Date {
    func converttoMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
