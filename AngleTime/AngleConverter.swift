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
        
        //MARK: Hour Hand radians from 0
        var convertedHour = 0
        if hour >= 12 {
            convertedHour = hour % 12
        } else {
            convertedHour = hour
        }
        
        var hourHand = 0.0
        hourHand = Double(convertedHour) * (Double.pi/6.0) + Double(minute) * (Double.pi/360.0)
        
        
        //MARK: Minute Hand radians from 0
        var minuteHand = 0.0
        minuteHand = Double(minute) * Double.pi/30.0
        
        //MARK: Finding Angle Between
        var angle = 0.0
        angle = abs(hourHand - minuteHand)

        return angle
    }
}
