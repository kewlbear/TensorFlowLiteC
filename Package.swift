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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250518/TensorFlowLiteC.xcframework.zip", checksum: "54bf72aab92bfc80b2e284924ceb48a3a06cc09d4118b0b9031b960d9da79e26"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250518/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6f29404dd3e5e0a4d1b63f03727951308caab2a43c6cb0f784e6a3c18f4683a2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250518/TensorFlowLiteCMetal.xcframework.zip", checksum: "02c174475b6d2cee229171d5c2c92ec920a392c6f8494aba6c3e7d96efd33491"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
