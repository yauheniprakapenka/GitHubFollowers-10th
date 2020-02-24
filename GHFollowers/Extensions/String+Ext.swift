//
//  String+Ext.swift
//  GHFollowers
//
//  Created by yauheni prakapenka on 24.02.2020.
//  Copyright © 2020 yauheni prakapenka. All rights reserved.
//

import Foundation

extension String {

    func convertToDate() -> Date? {
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateformatter.locale = Locale(identifier: "en_US_POSIX")
        dateformatter.timeZone = .current
        
        return dateformatter.date(from: self)
    }
    
    func convertToDisplayFormat() -> String {
        guard let date = self.convertToDate() else { return "N/A" }
        return date.converttoMonthYearFormat()
    }
}
