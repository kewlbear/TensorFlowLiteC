import XCTest

import TensorFlowLiteCTests

var tests = [XCTestCaseEntry]()
tests += TensorFlowLiteCTests.allTests()
XCTMain(tests)
