//
//  Angle.swift
//  Angle
//
//  Created by Alexandre Lopoukhine on 09/12/2015.
//  Copyright © 2015 bluetatami. All rights reserved.
//

private let pi = CGFloat(M_PI)

/// Struct acts as a wrapper for an angle value in degrees.
public struct Angle {
    /// Private stored variable, only variable in the struct.
    private var _degrees: CGFloat
    
    /**
        Returns an angle within the range 0..<360.0
        
        - parameter uncheckedDegrees: Degrees to be normalised.
        - returns: Degrees within the range 0..<360.
    */
    public static func normalise(uncheckedDegrees: CGFloat) -> CGFloat {
        if uncheckedDegrees < 0 {
            return uncheckedDegrees % 360.0 + 360
        } else if uncheckedDegrees < 360.0 {
            return uncheckedDegrees
        } else {
            return uncheckedDegrees % 360.0
        }
    }
    
    public static func degreesToRadians(degrees: CGFloat) -> CGFloat {
        return degrees * pi / 180
    }
    
    public static func radiansToDegrees(radians: CGFloat) -> CGFloat {
        return radians * 180 / pi
    }
    
    public var degrees: CGFloat {
        get {
            return _degrees
        }
        set {
            _degrees = Angle.normalise(newValue)
        }
    }
    
    public var radians: CGFloat {
        get {
            return Angle.degreesToRadians(_degrees)
        }
        set {
            _degrees = Angle.normalise(Angle.radiansToDegrees(newValue))
        }
    }
    
    public init(degrees: CGFloat) {
        self._degrees = Angle.normalise(degrees)
    }
    
    public init(radians: CGFloat) {
        self._degrees = Angle.normalise(Angle.radiansToDegrees(radians))
    }
    
    public init(degrees: Double) {
        self.init(degrees: CGFloat(degrees))
    }
    
    public init(radians: Double) {
        self.init(radians:CGFloat(radians))
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

