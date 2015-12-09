//
//  Trigonometric Functions.swift
//  Angle
//
//  Created by Alexandre Lopoukhine on 09/12/2015.
//  Copyright © 2015 bluetatami. All rights reserved.
//

public func cos(angle: Angle) -> CGFloat {
    return cos(angle.radians)
}

public func sin(angle: Angle) -> CGFloat {
    return sin(angle.radians)
}

public func tan(angle: Angle) -> CGFloat {
    return tan(angle.radians)
}

public func acosToAngle(cosValue: CGFloat) -> Angle {
    let value: CGFloat = acos(cosValue)
    return Angle(radians: value)
}

public func asinToAngle(sinValue: CGFloat) -> Angle {
    let value: CGFloat = asin(sinValue)
    return Angle(radians: value)
}

public func atanToAngle(tanValue: CGFloat) -> Angle {
    let value: CGFloat = atan(tanValue)
    return Angle(radians: value)
}

public func atan2ToAngle(y: CGFloat, x: CGFloat) -> Angle {
    let value: CGFloat  = atan2(y,x)
    return Angle(radians: value)
}
