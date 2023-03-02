// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230301/TensorFlowLiteC.xcframework.zip", checksum: "9f913669060d7ec7a39b4582b0ffd94ea3658a1cb9103c5914a4cf3996b0a27b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230301/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1feb11f2e7640cf07fe053099e05075cd70b3d63464cd4aa6c732a8923e21d21"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230301/TensorFlowLiteCMetal.xcframework.zip", checksum: "bbae8f842fec7b675f2c39dbd5acebeff727679fb93c8bc9e08b6640a62a68d9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
