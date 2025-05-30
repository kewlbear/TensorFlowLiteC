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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250529/TensorFlowLiteC.xcframework.zip", checksum: "6de2433dfeb13b40766ef9c9c7d3cdec256db6e9ec81cb0a2b45e4f9c027634e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250529/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7945afba609476c32e5f9fc910cd7316195b854b4fb5932d5ae24faaffb5be92"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250529/TensorFlowLiteCMetal.xcframework.zip", checksum: "2368840e4068c14bfe3b9226e3a6fc43f7c87c4dbb2ffbb8d4ae4acd20b9babe"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
