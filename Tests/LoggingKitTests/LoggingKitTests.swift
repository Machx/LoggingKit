import Testing
@testable import LoggingKit

@Test func example() async throws {
	Log.general.info("Hello, World!")
}

@Test func testErrorDescription() async throws {
	struct MyError: Error, CustomStringConvertible {
		var description: String = "This is a test error"
	}
	Log.general.error("MyError: \(MyError().description())")
}
