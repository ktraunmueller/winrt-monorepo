// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-uwp",
    products: [
        .library(
            name: "UWP", type: .dynamic, targets: ["UWP"]),
    ],
    dependencies: [
        .package(path: "../swift-cwinrt"),
        .package(path: "../swift-windowsfoundation")
    ],
    targets: [
        .target(
            name: "UWP",
            dependencies: [
                .product(name: "CWinRT", package: "swift-cwinrt"),
                .product(name: "WindowsFoundation", package: "swift-windowsfoundation")
            ])
    ],
    swiftLanguageModes: [.v5]
)
