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
            targets: ["SwiftSovereignStates"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/tid-kijyun/Kanna.git", from: "5.2.7")
    ],
    targets: [
        .target(
            name: "SwiftSovereignStates",
            dependencies: ["Kanna"],
            resources: [
                .process("Localization")
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
