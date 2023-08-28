// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-sovereign-states",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v13),
        .iOS(.v16),
        .tvOS(.v16),
        .watchOS(.v9)
    ],
    products: [
        .library(
            name: "SwiftSovereignStates",
            targets: ["SwiftSovereignStates"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/tid-kijyun/Kanna.git", from: "5.2.7")
    ],
    targets: [
        .target(
            name: "SwiftSovereignStates",
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "SwiftSovereignStatesTests",
            dependencies: [
                "SwiftSovereignStates",
                "Kanna"
            ]
        ),
    ]
)
