// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Then",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v4),
        .tvOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Then",
            targets: ["Then"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Then"),
        .testTarget(
            name: "ThenTests",
            dependencies: ["Then"]),
    ]
)
