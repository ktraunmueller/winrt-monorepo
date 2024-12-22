// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let linkerSettings: [LinkerSetting] = [
/* Figure out magic incantation so we can delay load these dlls
    .unsafeFlags(["-L\(currentDirectory)/Sources/CWinAppSDK/nuget/lib"]),
    .unsafeFlags(["-Xlinker" , "/DELAYLOAD:Microsoft.WindowsAppRuntime.Bootstrap.dll"]),
*/
]

let package = Package(
    name: "WinAppSDK",
    products: [
        .library(name: "WinAppSDK", type: .dynamic, targets: ["WinAppSDK"]),
        .library(name: "CWinAppSDK", targets: ["CWinAppSDK"]),
    ],
    dependencies: [
        .package(path: "../CWinRT"),
        .package(path: "../UWP"),
        .package(path: "../WindowsFoundation"),
    ],
    targets: [
        .target(
            name: "WinAppSDK",
            dependencies: [
                .product(name: "CWinRT", package: "CWinRT"),
                .product(name: "UWP", package: "UWP"),
                .product(name: "WindowsFoundation", package: "WindowsFoundation"),
                "CWinAppSDK"
            ]
        ),
        .target(
            name: "CWinAppSDK",
            resources: [
                .copy("nuget/bin/Microsoft.WindowsAppRuntime.Bootstrap.dll"),
            ],
            linkerSettings: linkerSettings
        )
    ],
    swiftLanguageModes: [.v5]
)
