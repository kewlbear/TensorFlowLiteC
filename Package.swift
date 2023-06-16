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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230615/TensorFlowLiteC.xcframework.zip", checksum: "86d99bb0d141076031f5b89c4f2e06c8656afb8d74d01dc81b28d14b92a0281d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230615/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a95b7f69e79b0372d4760d7b7b11a8bab2dd0b5eda834ce804230f54533942e7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230615/TensorFlowLiteCMetal.xcframework.zip", checksum: "45f3edfcc209cf1751f7dae0ac7a7ccc95317f7a7d5ceeb4259c417a2aac162a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
