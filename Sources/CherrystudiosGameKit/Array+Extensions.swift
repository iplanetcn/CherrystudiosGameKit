//
//  Array+Extensions.swift
//  CherrystudiosGameKit
//
import CoreGraphics

extension Array where Element == CGVector {
    /// Calculate the average of the giving vectors
    func average() -> CGVector {
        guard !isEmpty else {
            return .zero
        }

        let count = CGFloat(self.count)

        let sum = reduce(CGVector.zero) { result, vector in
            CGVector(dx: result.dx + vector.dx, dy: result.dy + vector.dy)
        }

        return CGVector(dx: sum.dx / count, dy: sum.dy / count)
    }
}
