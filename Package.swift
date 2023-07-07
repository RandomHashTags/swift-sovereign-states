// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-sovereign-states",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
        .tvOS(.v15),
        .watchOS(.v8)
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
