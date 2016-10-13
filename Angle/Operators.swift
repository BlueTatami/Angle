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

public func * (left: Double, right: Angle) -> Angle {
    return Angle(degrees: left * right.degrees)
}

public func * (left: Angle, right: Double) -> Angle {
    return Angle(degrees: left.degrees * right)
}

public func / (left: Angle, right: Double) -> Angle {
    return Angle(degrees: left.degrees / right)
}

// MARK: Mutating operators

public func += (left: inout Angle, right: Angle) {
    left = left + right
}

public func -= (left: inout Angle, right: Angle) {
    left = left - right
}

public func *= (left: inout Angle, right: Double) {
    left = left * right
}

public func /= (left: inout Angle, right: Double) {
    left = left / right
}
