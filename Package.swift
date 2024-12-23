// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UWP",
    products: [
        .library(
            name: "UWP", type: .dynamic, targets: ["UWP"]),
    ],
    dependencies: [
        .package(path: "../CWinRT"),
        .package(path: "../WindowsFoundation")
    ],
    targets: [
        .target(
            name: "UWP",
            dependencies: [
                .product(name: "CWinRT", package: "CWinRT"),
                .product(name: "WindowsFoundation", package: "WindowsFoundation")
            ])
    ],
    swiftLanguageModes: [.v5]
)
