// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport

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
        .package(url: "https://github.com/apple/swift-syntax.git", from: "510.0.2")
    ],
    targets: [
        .macro(
            name: "SwiftSovereignStatesMacros",
            dependencies: [
                .product(name: "SwiftSyntax", package: "swift-syntax"),
                .product(name: "SwiftSyntaxBuilder", package: "swift-syntax"),
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax")
            ]
        ),

        .target(
            name: "SwiftSovereignStates",
            dependencies: [
                "SwiftSovereignStatesMacros"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "SwiftSovereignStatesTests",
            dependencies: [
                "SwiftSovereignStates"
            ]
        ),
    ]
)
