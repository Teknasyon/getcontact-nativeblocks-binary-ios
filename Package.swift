// swift-tools-version: 6.0.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GetcontactNativeblocksBinary",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
    ],
    dependencies: [
        .package(url: "https://github.com/nativeblocks/nativeblocks-ios-sdk", exact: "1.7.1"),
        .package(url: "https://github.com/nativeblocks/nativeblocks-foundation-ios", from: "1.2.2"),
        .package(url: "https://github.com/nativeblocks/nativeblocks-wandkit-ios-sdk", from: "1.1.0"),
        .package(url: "https://github.com/nativeblocks/nativeblocks-compiler-ios.git", from: "1.3.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "GetcontactNativeblocksBinary",
            dependencies: [
                .product(name: "Nativeblocks", package: "nativeblocks-ios-sdk"),
                .product(name: "NativeblocksWandKit", package: "nativeblocks-wandkit-ios-sdk"),
                .product(name: "NativeblocksCompiler", package: "nativeblocks-compiler-ios")
            ]),
    ]
)

