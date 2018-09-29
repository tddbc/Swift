import XCTest
import MirrorDiffKit
@testable import TDDBCSwift

class ExampleXCTestTests: XCTestCase {
    func testHelloWorld() {
        let sample = Sample()
        
        let actual = sample.say()
        
        let expected = "Hello TDD BootCamp!"
        XCTAssertEqual(actual, expected, diff(between: expected, and: actual))
    }
}
