//
//  AngleTests.swift
//  AngleTests
//
//  Created by Alexandre Lopoukhine on 09/12/2015.
//  Copyright © 2015 bluetatami. All rights reserved.
//

import XCTest
@testable import Angle

class AngleTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    // Tests for correct initialisation from angle less than -360°
    func testNormaliseBigNegative() {
        let degrees: CGFloat    = -1000.0
        let angle               = Angle(degrees: degrees)
        
        XCTAssert(angle.degrees == 80.0)
    }
    
    // Tests for correct initialisation from angle between -360° and 0°
    func testNormaliseSmallNegative() {
        let degrees: CGFloat    = -200.0
        let angle               = Angle(degrees: degrees)
        
        XCTAssert(angle.degrees == 160.0)
    }
    
    // Tests for correct initialisation from 0°
    func testNormaliseZero() {
        let degrees: CGFloat    = 0.0
        let angle               = Angle(degrees: degrees)
        
        XCTAssert(angle.degrees == 0.0)
    }
    
    // Tests for correct initialisation from angle less than -360°
    func testNormaliseWithinRangeNegative() {
        let degrees: CGFloat    = 80
        let angle               = Angle(degrees: degrees)
        
        XCTAssert(angle.degrees == 80.0)
    }
    
    // Tests for correct initialisation from 360°
    func testNormaliseThreeSixty() {
        let degrees: CGFloat    = 360.0
        let angle               = Angle(degrees: degrees)
        
        XCTAssert(angle.degrees == 0.0)
    }
    
    // Tests for correct initialisation from angle larger than or equal to 360°
    func testNormaliseOutOfRange() {
        let degrees: CGFloat    = 1000.0
        let angle               = Angle(degrees: degrees)
        
        XCTAssert(angle.degrees == 280.0)
    }
    
    // Tests for correct initialisation from pi / 2 radians
    func testInitialiseFromRadians() {
        let radians = M_PI_2
        let angle   = Angle(radians: radians)
        
        XCTAssert(angle.degrees == 90.0)
    }
}
