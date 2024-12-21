// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WinUI",
    products: [
        .library(
            name: "WinUI", type: .dynamic, targets: ["WinUI"])
    ],
    dependencies: [
        .package(path: "../UWP"),
        .package(path: "../WinAppSDK"),
        .package(path: "../WindowsFoundation")
    ],
    targets: [
        .target(
            name: "WinUI",
            dependencies: [
                .product(name: "UWP", package: "UWP"),
                .product(name: "WinAppSDK", package: "WinAppSDK"),
                .product(name: "WindowsFoundation", package: "WindowsFoundation")
            ])
    ],
    swiftLanguageModes: [.v5]
)
