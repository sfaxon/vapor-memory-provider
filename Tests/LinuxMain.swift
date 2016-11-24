#if os(Linux)

import XCTest
@testable import VaporMemory

XCTMain([
     testCase(VaporMemoryTests.allTests),
])

#endif
