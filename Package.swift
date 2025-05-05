// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "swift-win2d",
    products: [
        .library(name: "Win2D", type: .dynamic, targets: ["Win2D"]),
    ],
     dependencies: [
        // .package(url: "https://github.com/ktraunmueller/swift-cwinrt", branch: "main"),
        // .package(url: "https://github.com/ktraunmueller/swift-uwp", branch: "main"),
        // .package(url: "https://github.com/ktraunmueller/swift-windowsappsdk", branch: "main"),
        // .package(url: "https://github.com/ktraunmueller/swift-windowsfoundation", branch: "main"),
        // .package(url: "https://github.com/ktraunmueller/swift-winui", branch: "main"),
        .package(path: "../swift-cwinrt"),
        .package(path: "../swift-uwp"),
        // .package(path: "../swift-windowsappsdk"),
        .package(path: "../swift-windowsfoundation"),
        .package(path: "../swift-winui"),
    ],
    targets: [
        .target(
            name: "Win2D",
            dependencies: [
                .product(name: "CWinRT", package: "swift-cwinrt"),
                .product(name: "UWP", package: "swift-uwp"),
                .product(name: "WindowsFoundation", package: "swift-windowsfoundation"),
                .product(name: "WinUI", package: "swift-winui"),
            ],
            resources: [
                .copy("NativeBinaries/Microsoft.Graphics.Canvas.dll"),
            ]
        ),
    ],
    swiftLanguageModes: [.v5]
)
