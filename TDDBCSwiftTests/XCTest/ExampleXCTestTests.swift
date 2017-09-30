import XCTest
@testable import TDDBCSwift

class ExampleXCTestTests: XCTestCase {
    func testHelloWorld() {
        let sample = Sample()
        XCTAssertEqual(sample.say(), "Hello TDD BootCamp!")
    }
}
