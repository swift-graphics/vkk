import XCTest
@testable import vkk
import vulkan

final class vkkTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
//        XCTAssertEqual(vkk().text, "Hello, World!")

        let appInfo = VkApplicationInfo(
                applicationName: "Hello Triangle",
                applicationVersion: 1)
        print("\(appInfo)")
        print("\(String(cString: appInfo.pApplicationName))")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
