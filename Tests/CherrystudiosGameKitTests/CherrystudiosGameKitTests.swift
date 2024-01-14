import XCTest
@testable import CherrystudiosGameKit

final class CherrystudiosGameKitTests: XCTestCase {
    
    func testCGFloatRandom() throws {
        let result = CGFloat.random()
        print("random float:\(result)")
        XCTAssertTrue(result <= 1.0)
    }
}
