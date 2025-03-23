// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "ColorCode",
    platforms: [.macOS(.v15)],
    products: [
        .library(name: "ColorCode", targets: ["ColorCode"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-numerics", from: Version(1, 0, 2)),
    ],
    targets: [
        .target(name: "ColorCode"),
        .testTarget(name: "ColorCodeTests", dependencies: [
            "ColorCode",
            .product(name: "Numerics", package: "swift-numerics"),
        ])
    ]
)
