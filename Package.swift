// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-windowsfoundation",
    products: [
        .library(
            name: "WindowsFoundation", type: .dynamic, targets: ["WindowsFoundation"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ktraunmueller/swift-cwinrt", branch: "main")
    ],
    targets: [
        .target(
            name: "WindowsFoundation",
             dependencies: [
                .product(name: "CWinRT", package: "swift-cwinrt"),
            ])
    ],
    swiftLanguageModes: [.v5]
)
