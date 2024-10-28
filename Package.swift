// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PDF417",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PDF417",
            targets: ["PDF417"]),
    ],
    dependencies: [
        .package(url: "https://github.com/attaswift/BigInt.git", from: "5.4.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PDF417",
            dependencies: [.product(name: "BigInt", package: "BigInt")]
        ),
        .testTarget(
            name: "PDF417Tests",
            dependencies: ["PDF417"]
        ),
    ]
)
