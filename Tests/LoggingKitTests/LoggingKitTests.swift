import Testing
@testable import LoggingKit

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
