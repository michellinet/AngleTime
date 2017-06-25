//
//  ViewController.swift
//  AngleTime
//
//  Created by Michelline Tran on 6/14/17.
//  Copyright © 2017 Michelline Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        var calculations = calculateMinimumAngle(with: 15)
    }
    
    func calculateMinimumAngle(with timeInterval: Int) -> [Double] {
        let converter = AngleConverter()
        var convertedValues = [Double]()
        
        for hour in 0..<24 {
            for minute in stride(from: 0, to: 59, by: timeInterval) {
                let converted = converter.convert(hour: hour, minute: minute)
                convertedValues.append(converted)
            }
        }
        return convertedValues
    }
}
