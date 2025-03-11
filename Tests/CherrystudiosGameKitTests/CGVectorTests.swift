//
//  CGVectorTests.swift
//  CherrystudiosGameKit
//
//  Created by John Lee on 2025/3/11.
//
import XCTest
@testable import CherrystudiosGameKit

final class CGVectorTests: XCTestCase {
    func test_limit() throws {
        // Test a'length is bigger than limit length
        var a = CGVector(dx: 2, dy: 2)
        a.limit(sqrt(2))
        XCTAssertTrue(a.dx == 1)
        XCTAssertTrue(a.dy == 1)
        print("a: \(a)")
        
        // Test a'length is smaller than limit length
        var b = CGVector(dx: 0.5, dy: 1)
        b.limit(sqrt(2))
        XCTAssertTrue(b.dx == 0.5)
        XCTAssertTrue(b.dy == 1)
        print("b: \(b)")
        
        // Test a'length is smaller than limit length
        var c = CGVector(dx: 2, dy: 2)
        c.limit(sqrt(8))
        XCTAssertTrue(c.dx == 2)
        XCTAssertTrue(c.dy == 2)
        print("c: \(c)")
    }
}
