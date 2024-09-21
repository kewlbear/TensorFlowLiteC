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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240920/TensorFlowLiteC.xcframework.zip", checksum: "ff8b4211f9a9c701ae0181cb8cc9f5fe2c93aaa4b11241cc53ed6159ab030c5e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240920/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7ae38589b86dacf93bcf61d9e6087bcc1f0f8d44ea5ea70d3931a442ffb3ad36"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240920/TensorFlowLiteCMetal.xcframework.zip", checksum: "e0f586422700feba8993d3a6de1177e5ef3f9d7ef27f158de40a89e6aa20a8c7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
