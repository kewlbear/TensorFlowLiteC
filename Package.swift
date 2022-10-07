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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221006/TensorFlowLiteC.xcframework.zip", checksum: "29c4eecdf31a67374491500a38e3b5e630eacd49cf674a92f7cb0f2e301d34b4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221006/TensorFlowLiteCCoreML.xcframework.zip", checksum: "db36b393d7e0f0301463816359cb0591349bc45d286308897ce6b0f33c8f8edf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221006/TensorFlowLiteCMetal.xcframework.zip", checksum: "149224a06f1d2d33c528ccafd129ee08efd4dc8d53fae111c123cd6782fe16be"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
