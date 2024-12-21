// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WindowsFoundation",
    products: [
        .library(
            name: "WindowsFoundation", type: .dynamic, targets: ["WindowsFoundation"]),
    ],
    dependencies: [
        .package(path: "../CWinRT"),
    ],
    targets: [
        .target(
            name: "WindowsFoundation",
             dependencies: [
                .product(name: "CWinRT", package: "CWinRT"),
            ])
    ],
    swiftLanguageModes: [.v5]
)
