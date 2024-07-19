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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240718/TensorFlowLiteC.xcframework.zip", checksum: "efa7a6db7f78543b517e3b23e9dd19f963c7a36aaad0f904bc5a8cacf7cec73d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240718/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2a821de6ca31764eec7bbe6bdca59afe3bc6bac099dc1d98dc3e53834e6ceee6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240718/TensorFlowLiteCMetal.xcframework.zip", checksum: "0c026e99a4e052cc696c7f59086c88ba8d091420a733e8c23b331e90b11c446e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
