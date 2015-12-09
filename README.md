# Angle
Swift µframework for code dealing with angles.

Contains one struct: `Angle` that contains an angle in degrees, stored in a `CGFloat`.
Also contains implementations for arithmetic operators and trigonometric functions.

This framework is motivated by the confusion brought by various libraries and formulae not being explicit in the units they expect.
This library allows you to check the unit once, and use this wrapper to make it explicit.

Example use to extend UIBezierPath:

```
extension UIBezierPath {
    func addArcWithCenter(center: CGPoint, radius: CGFloat, startAngle: Angle, endAngle: Angle, clockwise: Bool) {
        addArcWithCenter(center, radius: radius, startAngle: startAngle.radians, endAngle: endAngle.radians, clockwise: clockwise)
    }
}
```
