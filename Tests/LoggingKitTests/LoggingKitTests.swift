import Testing
@testable import LoggingKit

@Test func example() async throws {
	Log.general.info("Hello, World!")
}

struct MyError: Error, CustomStringConvertible, CustomDebugStringConvertible {
	var description: String = "This is a test error"
	var debugDescription: String = "This is an even more lengthy description."
}

@Test func testErrorDescription() async throws {
	Log.general.error("MyError: \(MyError().description())")
}

@Test func testDebugDescription() async throws {
	Log.general.error("MyError: \(MyError().debugDescription())")
}
