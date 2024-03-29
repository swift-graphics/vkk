// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "vkk",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "vkk",
            targets: ["vkk"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "../glm", .revision("fcb9efcd2b0f530ad4de6c59386d8714ee04149c"))
    ],
    targets: [
        .systemLibrary(name: "vulkan", pkgConfig: "vulkan"),
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "vkk",
            dependencies: ["vulkan", "glm"]),
        .testTarget(
            name: "vkkTests",
            dependencies: ["vkk", "vulkan", "glm"]),
    ]
)
