import Testing
@testable import LoggingKit

@Test func example() async throws {
	Log.general.info("Hello, World!")
}

struct MyError: Error, CustomStringConvertible {
	var description: String = "This is a test error"
}

@Test func testErrorDescription() async throws {
	Log.general.error("MyError: \(MyError().description())")
}
