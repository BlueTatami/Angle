//
//  Angle.swift
//  Angle
//
//  Created by Alexandre Lopoukhine on 09/12/2015.
//  Copyright © 2015 bluetatami. All rights reserved.
//

/// Struct acts as a wrapper for an angle value in degrees.
public struct Angle {
    
    /// Always in the range 0 ..< 360.0
    public var degrees: Double {
        didSet {
            guard degrees < 0 || 360 <= degrees else { return }
            
            degrees.formTruncatingRemainder(dividingBy: 360)
            
            if degrees < 0 {
                degrees += 360
            }
        }
    }
    
    public init(degrees: Double) {
        self.degrees = degrees
        guard degrees < 0 || 360 <= degrees else { return }
        
        self.degrees.formTruncatingRemainder(dividingBy: 360)
        
        if degrees < 0 {
            self.degrees += 360
        }
    }
    
    public static func degreesToRadians(_ degrees: Double) -> Double {
        return degrees * Double.pi / 180
    }
    
    public static func radiansToDegrees(_ radians: Double) -> Double {
        return radians * 180 / Double.pi
    }
}

extension Angle {
    
    public var radians: Double {
        get {
            return Angle.degreesToRadians(degrees)
        }
        set {
            degrees = Angle.radiansToDegrees(newValue)
        }
    }
    
    public init(radians: Double) {
        self = Angle(degrees: Angle.radiansToDegrees(radians))
    }
}

// MARK: Equatable
extension Angle: Equatable {}
public func ==(lhs: Angle, rhs: Angle) -> Bool {
    return lhs.degrees == rhs.degrees
}

// MARK: CustomStringConvertible
extension Angle: CustomStringConvertible {
    public var description: String {
        return "\(degrees)°"
    }
}

