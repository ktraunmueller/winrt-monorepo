// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "swift-uwp",
    products: [
        .library(
            name: "UWP", type: .dynamic, targets: ["UWP"])
    ],
    dependencies: [
        // .package(url: "https://github.com/ktraunmueller/swift-cwinrt", branch: "main"),
        // .package(url: "https://github.com/ktraunmueller/swift-windowsfoundation", branch: "main")
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
