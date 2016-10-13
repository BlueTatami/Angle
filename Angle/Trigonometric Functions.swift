//
//  Trigonometric Functions.swift
//  Angle
//
//  Created by Alexandre Lopoukhine on 09/12/2015.
//  Copyright © 2015 bluetatami. All rights reserved.
//

public func cos(_ angle: Angle) -> Double {
    return cos(angle.radians)
}

public func sin(_ angle: Angle) -> Double {
    return sin(angle.radians)
}

public func tan(_ angle: Angle) -> Double {
    return tan(angle.radians)
}

public func acosToAngle(_ cosValue: Double) -> Angle {
    let value: Double = acos(cosValue)
    return Angle(radians: value)
}

public func asinToAngle(_ sinValue: Double) -> Angle {
    let value: Double = asin(sinValue)
    return Angle(radians: value)
}

public func atanToAngle(_ tanValue: Double) -> Angle {
    let value: Double = atan(tanValue)
    return Angle(radians: value)
}

public func atan2ToAngle(_ y: Double, x: Double) -> Angle {
    let value: Double  = atan2(y,x)
    return Angle(radians: value)
}
