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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211106/TensorFlowLiteC.xcframework.zip", checksum: "e07c70af8a7df0e53c0a0d81c7d41aff56881c5f87e428d12bbf1b5216a9b251"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211106/TensorFlowLiteCCoreML.xcframework.zip", checksum: "895d17090af073aee9320bca5145e543be4f1d41d8a420fba13a281e11a7021e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211106/TensorFlowLiteCMetal.xcframework.zip", checksum: "b4ec803bb05b86bebd193cd388c70e95dadb31ac9539bfbbe66b97c9571592e4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
