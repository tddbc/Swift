import Quick
import Nimble
import MirrorDiffKit
@testable import TDDBCSwift

class ExampleQuickTests: QuickSpec {
    override func spec() {
        describe("Hello World を返すサンプル") {
            it("は Hello TDD BootCamp! を返すべき") {
                let sample = Sample()
                
                let actual = sample.say()
                
                let expected = "Hello TDD BootCamp!"
                expect(actual).to(equal(expected), description: diff(between: expected, and: actual))
            }
        }
    }
}
