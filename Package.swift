// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Stencly",
    products: [
        .executable(
            name: "stencly",
            targets: ["stencly"]
        ),
        .library(
            name: "StenclyKit",
            targets: ["StenclyKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftGen/StencilSwiftKit.git", from: "2.7.2"),
        .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.6.0"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "4.0.0"),
        .package(url: "https://github.com/jpsim/Yams.git", from: "2.0.0"),
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.0.1"),
    ],
    targets: [
        .target(
            name: "stencly",
            dependencies: ["StenclyCLI"]
        ),
        .target(
            name: "StenclyCLI",
            dependencies: ["StenclyKit", "ArgumentParser"]
        ),
        .target(
            name: "StenclyKit",
            dependencies: ["StencilSwiftKit", "SwiftyJSON", "Yams"]
        ),
        .testTarget(
            name: "StenclyKitTests",
            dependencies: ["StenclyKit", "SnapshotTesting"]
        ),
    ]
)
