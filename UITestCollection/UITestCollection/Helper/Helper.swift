//
//  Helper.swift
//  UITestCollection
//
//  Created by yauheni prakapenka on 10/08/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import UIKit

class Helper {
    
    enum VibrationStyle: String {
        case light
        case medium
        case heavy
    }
    
    func vibration(style: VibrationStyle) {
        if style == VibrationStyle.light {
            let generator = UIImpactFeedbackGenerator(style: .light)
            generator.impactOccurred()
        } else if style == VibrationStyle.medium {
            let generator = UIImpactFeedbackGenerator(style: .medium)
            generator.impactOccurred()
        } else if style == VibrationStyle.heavy {
            let generator = UIImpactFeedbackGenerator(style: .heavy)
            generator.impactOccurred()
        }
    }
    
}
