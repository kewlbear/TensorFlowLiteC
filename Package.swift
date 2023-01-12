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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230111/TensorFlowLiteC.xcframework.zip", checksum: "0c4e6d210d89d3956790c3f58b07f8cd071c4e00ae7a8abd3d6f437e3dbb049a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230111/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a4b37d9eefff8d66d618b9bc7881fd34ca2f0eeb250dac3e1925403928c4cdc6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230111/TensorFlowLiteCMetal.xcframework.zip", checksum: "1742717dc2a87610fafd8174ef72c9d7a8191418b7b57c5276fbfbd79e66afba"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
