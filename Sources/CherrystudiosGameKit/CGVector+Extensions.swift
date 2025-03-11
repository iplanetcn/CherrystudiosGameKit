import CoreGraphics
import SpriteKit

public extension CGVector {
    // MARK: - Computed Property
    /// Returns the angle in radians of the vector described by the CGVector. The range of the angle is -π to π; an angle of 0 points to the right.
    var angle: CGFloat {
        return atan2(dy, dx)
    }
    
    // MARK: - Initializers
    /// Creates a new CGVector given a CGPoint.
    init(point: CGPoint) {
        self.init(dx: point.x, dy: point.y)
    }

    /// Given an angle in radians, creates a vector of length 1.0 and returns the result as a new CGVector. An angle of 0 is assumed to point to the right.
    init(angle: CGFloat) {
        self.init(dx: cos(angle), dy: sin(angle))
    }

    // MARK: - Mutating Methods
    // Adds (dx, dy) to the vector.
    mutating func offset(dx: CGFloat, dy: CGFloat) -> CGVector {
        self.dx += dx
        self.dy += dy
        return self
    }

    /// Normalizes the vector described by the CGVector to length 1.0.
    mutating func normalize() -> CGVector {
        self = normalized()
        return self
    }

    mutating func setMag(_ mag: CGFloat) {
        let normalizedVector = normalized()
        self = CGVector(dx: normalizedVector.dx * mag, dy: normalizedVector.dy * mag)
    }
    
    mutating func div(_ mag: CGFloat) {
        if mag == 0 {
            return
        }
        
        self = CGVector(dx: self.dx/mag, dy: dy/mag)
    }
    
    mutating func limit(_ mag: CGFloat) {
        let currentMag = sqrt(dx * dx + dy * dy)
        if currentMag > mag {
            let ratio = mag / currentMag
            self = CGVector(dx: dx * ratio, dy: dy * ratio)
        }
    }

    mutating func add(_ vector: CGVector) {
        self = CGVector(dx: dx + vector.dx, dy: dy + vector.dy)
    }
    
    mutating func sub(_ vector: CGVector) {
        self = CGVector(dx: dx - vector.dx, dy: dy - vector.dy)
    }
    
    static func add(_ a:CGVector, _ b: CGVector) -> CGVector {
        return CGVector(dx: a.dx + b.dx, dy: a.dy + b.dy)
    }
    
    static func sub(_ a:CGVector, _ b: CGVector) -> CGVector {
        return CGVector(dx: a.dx - b.dx, dy: a.dy - b.dy)
    }

    // MARK: - Normal Methods
    /// Returns a copy of the vector.
    func copy() -> CGVector {
        return CGVector(dx: dx, dy: dy)
    }

    /// Returns the length (magnitude) of the vector described by the CGVector.
    func length() -> CGFloat {
        return sqrt(dx * dx + dy * dy)
    }

    /// Returns the squared length of the vector described by the CGVector.
    func lengthSquared() -> CGFloat {
        return dx * dx + dy * dy
    }

    /// Normalizes the vector described by the CGVector to length 1.0 and returns the result as a new CGVector.
    func normalized() -> CGVector {
        let len = length()
        return len > 0 ? self / len : CGVector.zero
    }

    /// Calculates the distance between two CGVectors. Pythagoras!
    func distanceTo(_ vector: CGVector) -> CGFloat {
        return (self - vector).length()
    }

    // MARK: - Static Methods
}

// MARK: - Associated Functions
/// Adds two CGVector values and returns the result as a new CGVector.
public func + (left: CGVector, right: CGVector) -> CGVector {
    return CGVector(dx: left.dx + right.dx, dy: left.dy + right.dy)
}

/// Increments a CGVector with the value of another.
public func += (left: inout CGVector, right: CGVector) {
    left = left + right
}

/// Subtracts two CGVector values and returns the result as a new CGVector.
public func - (left: CGVector, right: CGVector) -> CGVector {
    return CGVector(dx: left.dx - right.dx, dy: left.dy - right.dy)
}

/// Decrements a CGVector with the value of another.
public func -= (left: inout CGVector, right: CGVector) {
    left = left - right
}

/// Multiplies two CGVector values and returns the result as a new CGVector.
public func * (left: CGVector, right: CGVector) -> CGVector {
    return CGVector(dx: left.dx * right.dx, dy: left.dy * right.dy)
}

/// Multiplies a CGVector with another.
public func *= (left: inout CGVector, right: CGVector) {
    left = left * right
}

/// Multiplies the x and y fields of a CGVector with the same scalar value and
/// returns the result as a new CGVector.
public func * (vector: CGVector, scalar: CGFloat) -> CGVector {
    return CGVector(dx: vector.dx * scalar, dy: vector.dy * scalar)
}

/// Multiplies the x and y fields of a CGVector with the same scalar value.
public func *= (vector: inout CGVector, scalar: CGFloat) {
    vector = vector * scalar
}

/// Divides two CGVector values and returns the result as a new CGVector.
public func / (left: CGVector, right: CGVector) -> CGVector {
    return CGVector(dx: left.dx / right.dx, dy: left.dy / right.dy)
}

/// Divides a CGVector by another.
public func /= (left: inout CGVector, right: CGVector) {
    left = left / right
}

/// Divides the dx and dy fields of a CGVector by the same scalar value and
/// returns the result as a new CGVector.
public func / (vector: CGVector, scalar: CGFloat) -> CGVector {
    return CGVector(dx: vector.dx / scalar, dy: vector.dy / scalar)
}

/// Divides the dx and dy fields of a CGVector by the same scalar value.
public func /= (vector: inout CGVector, scalar: CGFloat) {
    vector = vector / scalar
}

/// Performs a linear interpolation between two CGVector values.
public func lerp(start: CGVector, end: CGVector, t: CGFloat) -> CGVector {
    return start + (end - start) * t
}
