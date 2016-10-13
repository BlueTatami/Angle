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
    
    func testConvertDegreesToRadians() {
        let degrees = 180.0
        let radians = Angle.degreesToRadians(degrees)
        
        XCTAssert(radians == Double.pi)
    }
    
    func testConvertRadiansToDegrees() {
        let radians = Double.pi
        let degrees = Angle.radiansToDegrees(radians)
        
        XCTAssert(degrees == 180.0)
    }
    
    func testDegreesSetter() {
        var angle       = Angle(degrees: 0.0)
        angle.degrees   = 40.0
        
        XCTAssert(angle.degrees == 40.0)
    }
    
    func testRadiansGetter() {
        let angle       = Angle(degrees: 90.0)
        
        XCTAssert(angle.radians == Double.pi / 2)
    }
    
    func testRadiansSetter() {
        var angle       = Angle(degrees: 40.0)
        angle.radians   = Double.pi / 2
        
        XCTAssert(angle.degrees == 90.0)
    }
    
    // Tests for correct initialisation from angle less than -360°
    func testNormaliseBigNegative() {
        let degrees = -1000.0
        var angle = Angle(degrees: degrees)
        
        XCTAssert(angle.degrees == 80.0)
        
        angle.degrees = degrees
        
        XCTAssert(angle.degrees == 80.0)
    }
    
    // Tests for correct initialisation from angle between -360° and 0°
    func testNormaliseSmallNegative() {
        let degrees = -200.0
        let angle = Angle(degrees: degrees)
        
        XCTAssert(angle.degrees == 160.0)
    }
    
    // Tests for correct initialisation from 0°
    func testNormaliseZero() {
        let degrees = 0.0
        let angle = Angle(degrees: degrees)
        
        XCTAssert(angle.degrees == 0.0)
    }
    
    // Tests for correct initialisation from angle less than -360°
    func testNormaliseWithinRangeNegative() {
        let degrees = 80.0
        let angle = Angle(degrees: degrees)
        
        XCTAssert(angle.degrees == 80.0)
    }
    
    // Tests for correct initialisation from 360°
    func testNormaliseThreeSixty() {
        let degrees = 360.0
        let angle = Angle(degrees: degrees)
        
        XCTAssert(angle.degrees == 0.0)
    }
    
    // Tests for correct initialisation from angle larger than or equal to 360°
    func testNormaliseOutOfRange() {
        let degrees = 1000.0
        let angle = Angle(degrees: degrees)
        
        XCTAssert(angle.degrees == 280.0)
    }
    
    // Tests for correct initialisation from pi / 2 radians
    func testInitialiseFromRadians() {
        let radians = Double.pi / 2
        let angle   = Angle(radians: radians)
        
        XCTAssert(angle.degrees == 90.0)
    }
    
    // MARK: CustomStringConvertible tests
    
    func testDescriptionString() {
        let angle = Angle(degrees: 40.0)
        
        XCTAssert("40.0°" == angle.description)
    }
    
    // MARK: Operator tests
    
    // Tests that angle negation works as intended, modulo 360°
    func testNegateNumber() {
        let negated = -Angle(degrees: 90.0)
        
        XCTAssert(negated.degrees == 270.0)
    }
    
    // Tests for correct result in addition of two constant angles
    func testAddAngles() {
        let first   = Angle(degrees: 30.0)
        let second  = Angle(degrees: 40.0)
        
        let sum = first + second
        
        XCTAssert(sum.degrees == 70.0)
    }
    
    func testSubtractAngles() {
        let first   = Angle(degrees: 30.0)
        let second  = Angle(degrees: 40.0)
        
        let sum     = first - second
        
        XCTAssert(sum.degrees == 350.0)
    }
    
    func testMultiplyLeft() {
        let left    = 2.0
        let right   = Angle(degrees: 20.0)
        
        let sum     = left * right
        
        XCTAssert(sum.degrees == 40.0)
    }
    
    func testMultiplyRight() {
        let left    = Angle(degrees: 20.0)
        let right   = 2.0
        
        let sum     = left * right
        
        XCTAssert(sum.degrees == 40.0)
    }
    
    func testDivide() {
        let left    = Angle(degrees: 40.0)
        let right   = 2.0
        
        let sum     = left / right
        
        XCTAssert(sum.degrees == 20.0)
    }
    
    func testIncrementAngle() {
        var first   = Angle(degrees: 40.0)
        let second  = Angle(degrees: 30.0)
        
        first      += second
        
        XCTAssert(first.degrees == 70.0)
    }
    
    func testDecrementAngle() {
        var first   = Angle(degrees: 40.0)
        let second  = Angle(degrees: 30.0)
        
        first      -= second
        
        XCTAssert(first.degrees == 10.0)
    }
    
    func testMultiplyMutateAngle() {
        var first   = Angle(degrees: 40.0)
        let second  = 3.0
        first      *= second
        
        XCTAssert(first.degrees == 120.0)
    }
    
    func testDivideMutateAngle() {
        var first   = Angle(degrees: 40.0)
        let second  = 4.0
        
        first      /= second
        
        XCTAssert(first.degrees == 10.0)
    }
}
