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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250101/TensorFlowLiteC.xcframework.zip", checksum: "daf9dd99dd97a00cb4f2650c977fc33449b212cf3c375eb36beffe8c18bc8c19"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250101/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7d38fffcf30f331807bfe18bcb29ef82fc4da7cb1fbabc6b2473d99de654aed1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250101/TensorFlowLiteCMetal.xcframework.zip", checksum: "6488c9cf7df632a36a61f73d4f0fd1e58c149af3d379a35bee56821f347f4594"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
