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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231016/TensorFlowLiteC.xcframework.zip", checksum: "386eb8a47b558d448ca92a1b6bab1f2afc6e36fd1aed0b79e2676e08372fdeb5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231016/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d146e4e2b384f6b96f15da51e4693471505802eaf60b82ef8ac0471be4a77126"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231016/TensorFlowLiteCMetal.xcframework.zip", checksum: "30c877f6c2ec54e95bd0d19d92003aa80a8b990b02bf321206399a1f94f6e342"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
