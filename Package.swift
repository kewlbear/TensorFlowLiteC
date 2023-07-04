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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230703/TensorFlowLiteC.xcframework.zip", checksum: "a6a8493d2a4dff40fc01a584c670927b9a0ba4f34f77a9d5c3ef20e79a80db32"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230703/TensorFlowLiteCCoreML.xcframework.zip", checksum: "694a8293337b454cb9f9ad9a92a396a502bcaee9eecfa490121b2de89e48a217"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230703/TensorFlowLiteCMetal.xcframework.zip", checksum: "327b7c6cc868ada039ba1b873f76333a847b58d9f8b195130d8e09ec9bcc1656"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
