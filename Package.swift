// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-sovereign-states",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v14),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "SwiftSovereignStates",
            targets: ["SwiftSovereignStates"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tid-kijyun/Kanna.git", from: "5.2.7"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftSovereignStates",
            dependencies: []
        ),
        .testTarget(
            name: "SwiftSovereignStatesTests",
            dependencies: [
                "SwiftSovereignStates",
                .product(name: "Kanna", package: "kanna")
            ]
        ),
    ]
)
