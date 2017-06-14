//
//  AngleConverter.swift
//  AngleTime
//
//  Created by Michelline Tran on 6/14/17.
//  Copyright © 2017 Michelline Tran. All rights reserved.
//

import Foundation

class AngleConverter {
    
    func convert(hour: Int, minute: Int) -> Double {
        var convertedHour = 0
        
        if hour >= 12 {
            convertedHour = hour % 12
        } else {
            convertedHour = hour
        }
        
        var angle = 0.0
        angle = Double(convertedHour) * (Double.pi / 6)
        
        return angle
    }
}
