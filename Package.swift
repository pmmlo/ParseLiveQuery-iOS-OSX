// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ParseLiveQuery",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v14),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "ParseLiveQuery",
            targets: ["ParseLiveQuery"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/BoltsFramework/Bolts-Swift.git", from: "1.9.0"),
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "4.0.4")
    ],
    targets: [
        .target(
            name: "ParseLiveQuery",
            dependencies: []
        ),
        .testTarget(
            name: "ParseLiveQueryTests",
            dependencies: ["ParseLiveQuery"]
        ),
    ],
    swiftLanguageVersions: [.v5]
)