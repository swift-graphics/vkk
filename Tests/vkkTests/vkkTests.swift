import XCTest
@testable import vkk
import vulkan

final class vkkTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
//        XCTAssertEqual(vkk().text, "Hello, World!")

        var appInfo = vk.ApplicationInfo(applicationName: "Hello Triangle", applicationVersion: 1)

        var createInfo = vk.InstanceCreateInfo(applicationInfo: &appInfo)

//        var instance: VkInstance = try! vk.createInstance(&createInfo)

        let (err, ins) = vk.createInstance(&createInfo)
        print(err)

        let inst: VkInstance = vk.createInstance(&createInfo)

        inst.destroy()
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}