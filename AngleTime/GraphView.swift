//
//  GraphView.swift
//  AngleTime
//
//  Created by Michelline Tran on 6/24/17.
//  Copyright © 2017 Michelline Tran. All rights reserved.
//

import Foundation
import UIKit

class GraphView: UIView {
    override func draw(_ rect: CGRect) {
        let minimumAngles = calculateMinimumAngle(with: 15)
        let path = pathForAngles(using: minimumAngles, rect: rect)
        UIColor.white.setStroke()
        path.stroke()
        
    }
    
    func calculateMinimumAngle(with timeInterval: Int) -> [Double] {
        let converter = AngleConverter()
        var minimumAngles = [Double]()
        
        for hour in 0..<24 {
            for minute in stride(from: 0, to: 59, by: timeInterval) {
                let converted = converter.convert(hour: hour, minute: minute)
                minimumAngles.append(converted)
            }
        }
        return minimumAngles
    }
    
    func pathForAngles(using values: [Double], rect: CGRect) -> UIBezierPath {
        let path = UIBezierPath()
        
        let start = CGPoint(x: 0, y: rect.height)
        path.move(to: start)
        
        for i in 0...values.count - 1 {
            let point = CGPoint(x: Double(i), y: Double(rect.height) - values[i])
            
            path.addLine(to: point)
        }
        
        path.lineWidth = 0.1
    
        return path
    }
    
}
