// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-winui",
    products: [
        .library(
            name: "WinUI", type: .dynamic, targets: ["WinUI"])
    ],
    dependencies: [
        .package(url: "https://github.com/ktraunmueller/swift-cwinrt", branch: "main"),
        .package(url: "https://github.com/ktraunmueller/swift-uwp", branch: "main"),
        .package(url: "https://github.com/ktraunmueller/swift-windowsappsdk", branch: "main"),
        .package(url: "https://github.com/ktraunmueller/swift-windowsfoundation", branch: "main")
    ],
    targets: [
        .target(
            name: "WinUI",
            dependencies: [
                .product(name: "CWinRT", package: "swift-cwinrt"),
                .product(name: "UWP", package: "swift-uwp"),
                .product(name: "WinAppSDK", package: "swift-windowsappsdk"),
                .product(name: "WindowsFoundation", package: "swift-windowsfoundation")
            ])
    ],
    swiftLanguageModes: [.v5]
)
