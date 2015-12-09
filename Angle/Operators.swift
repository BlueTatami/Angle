//
//  Operators.swift
//  Angle
//
//  Created by Alexandre Lopoukhine on 09/12/2015.
//  Copyright © 2015 bluetatami. All rights reserved.
//

public prefix func -(angle: Angle) -> Angle {
    return Angle(degrees: -angle.degrees)
}

public func + (lhs: Angle, rhs: Angle) -> Angle {
    return Angle(degrees: lhs.degrees + rhs.degrees)
}

public func - (lhs: Angle, rhs: Angle) -> Angle {
    return Angle(degrees: lhs.degrees - rhs.degrees)
}

public func * (left: CGFloat, right: Angle) -> Angle {
    return Angle(degrees: left * right.degrees)
}

public func * (left: Angle, right: CGFloat) -> Angle {
    return Angle(degrees: left.degrees * right)
}

public func / (left: Angle, right: CGFloat) -> Angle {
    return Angle(degrees: left.degrees / right)
}

// MARK: Mutating operators

public func += (inout left: Angle, right: Angle) {
    left = left + right
}

public func -= (inout left: Angle, right: Angle) {
    left = left - right
}

public func *= (inout left: Angle, right: CGFloat) {
    left = left * right
}

public func /= (inout left: Angle, right: CGFloat) {
    left = left / right
}
