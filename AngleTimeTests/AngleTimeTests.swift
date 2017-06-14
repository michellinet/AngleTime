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
    
    func testOneOClock() {
        let calcualtedAngle = converter.convert(hour: 1, minute: 0)
        XCTAssertEqual(calcualtedAngle, Double.pi/6)
    }
    
}
