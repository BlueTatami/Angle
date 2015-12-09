//
//  Angle.swift
//  Angle
//
//  Created by Alexandre Lopoukhine on 09/12/2015.
//  Copyright © 2015 bluetatami. All rights reserved.
//

private let pi = CGFloat(M_PI)

public struct Angle {
    private var _degrees: CGFloat
    
    // Returns an angle within the range 0..<360.0
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
    
    init(degrees: CGFloat) {
        self._degrees = Angle.normalise(degrees)
    }
    
    init(radians: CGFloat) {
        self._degrees = Angle.normalise(Angle.radiansToDegrees(radians))
    }
    
    init(degrees: Double) {
        self.init(degrees: CGFloat(degrees))
    }
    
    init(radians: Double) {
        self.init(radians:CGFloat(radians))
    }
}

extension Angle: CustomStringConvertible {
    public var description: String {
        return "\(degrees)°"
    }
}

