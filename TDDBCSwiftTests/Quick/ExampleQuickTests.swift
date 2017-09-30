import Quick
import Nimble
@testable import TDDBCSwift

class ExampleQuickTests: QuickSpec {
    override func spec() {
        describe("Hello World を返すサンプル") {
            it("は Hello TDD BootCamp! を返すべき") {
                let sample = Sample()
                expect(sample.say()).to(equal("Hello TDD BootCamp!"))
            }
        }
    }
}
