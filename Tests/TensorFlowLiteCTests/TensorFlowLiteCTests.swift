import XCTest
@testable import TensorFlowLiteC

final class TensorFlowLiteCTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(TensorFlowLiteC().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
