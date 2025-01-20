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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250119/TensorFlowLiteC.xcframework.zip", checksum: "fb2ece0153ba5df32f66b8e4270381181d3a1bb3afb1609ea4716f913809344a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250119/TensorFlowLiteCCoreML.xcframework.zip", checksum: "31f983516b32f5da023745dc526599631f454f0bfcd89b763ddd20bc03709d0c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250119/TensorFlowLiteCMetal.xcframework.zip", checksum: "5fe57073c511c6feab13fcaf0c9c0760277dadfa81137a407d208e657d2acdd1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
