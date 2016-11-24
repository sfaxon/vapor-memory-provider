import XCTest
import Fluent

@testable import VaporMemory

class VaporMemoryTests: XCTestCase {
    func testInit() {
        do {
            let fluentMemory = try Provider()
            XCTAssertNotNil(fluentMemory.driver, "Hello, World!")
        } catch {
            XCTFail("Failed to initalize driver")
        }
    }

    static var allTests : [(String, (VaporMemoryTests) -> () throws -> Void)] {
        return [
            ("testInit", testInit),
        ]
    }
}
