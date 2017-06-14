//
//  AngleTimeTests.swift
//  AngleTimeTests
//
//  Created by Michelline Tran on 6/14/17.
//  Copyright © 2017 Michelline Tran. All rights reserved.
//

import XCTest
import Darwin

@testable import AngleTime

class AngleTimeTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    let converter = AngleConverter()
    
    func testBaseCase() {
        let calculatedAngle = converter.convert(hour: 12, minute: 0)
        XCTAssertEqual(calculatedAngle, 0)
    }
    
    func testOneHundred() {
        let calcualtedAngle = converter.convert(hour: 1, minute: 0)
        XCTAssertEqual(calcualtedAngle, Double.pi/6)
    }
    
    func testTwoHundred() {
        let calcualtedAngle = converter.convert(hour: 2, minute: 0)
        XCTAssertEqual(calcualtedAngle, Double.pi/3)
    }
    
    func testThirteenHundred() {
        let calculatedAngle = converter.convert(hour: 13, minute: 0)
        XCTAssertEqual(calculatedAngle, Double.pi/6)
    }
    
    func testThirteenThirteen() {
        let calculatedAngle = converter.convert(hour: 13, minute: 13)
        XCTAssertEqual(calculatedAngle.roundTo(places: 4), 0.7243)
    }
    
    func testThirteenThirtyFive() {
        let calculatedAngle = converter.convert(hour: 13, minute: 35)
        XCTAssertEqual(calculatedAngle.roundTo(places: 4), 2.8362)
    }
    
}

extension Double {
    func roundTo(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
