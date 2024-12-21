// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WinAppSDK",
    products: [
        .library(
            name: "WinAppSDK", type: .dynamic, targets: ["WinAppSDK"]),
    ],
    dependencies: [
        .package(path: "../WindowsFoundation"),
        .package(path: "../UWP")
    ],
    targets: [
        .target(
            name: "WinAppSDK",
            dependencies: [
                .product(name: "WindowsFoundation", package: "WindowsFoundation"),
                .product(name: "UWP", package: "UWP")
            ])
    ],
    swiftLanguageModes: [.v5]
)
