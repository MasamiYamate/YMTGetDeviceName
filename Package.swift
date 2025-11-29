// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YMTGetDeviceName",
    products: [
        .library(
            name: "YMTGetDeviceName",
            targets: ["YMTGetDeviceName"]),
    ],
    targets: [
        .target(
            name: "YMTGetDeviceName",
            dependencies: []),
        .testTarget(
            name: "YMTGetDeviceNameTests",
            dependencies: ["YMTGetDeviceName"]),
    ]
)
