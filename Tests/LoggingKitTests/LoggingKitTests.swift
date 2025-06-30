import Testing
@testable import LoggingKit
import CoreGraphics

@Test func example() async throws {
	Log.general.info("Hello, World!")
}

struct MyError1: Error, CustomStringConvertible {
	var description: String = "This is a test error"
}

struct MyError2: Error, CustomDebugStringConvertible {
	var debugDescription: String = "This is an even more lengthy description."
}

@Test func testErrorDescription() async throws {
	Log.general.error("MyError: \(MyError1().description())")
}

@Test func testDebugDescription() async throws {
	Log.general.error("MyError: \(MyError2().debugDescription())")
}

@Test func testCGRect() async throws {
	let rect = CGRect(x: 0.1, y: 1.0, width: 7.0, height: 14.0)
	Log.general.debug("CGRect: \(rect)")
}
