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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210907/TensorFlowLiteC.xcframework.zip", checksum: "15f84fc26bd1745bf78962afdf8f40e05eb06b8287a5e6338c0dc68328103ecc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210907/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ab1bf4ec62a5acd05f0b52f0ce35c2cdbb582bf7aa65dc0c89eb6159358f9c2a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210907/TensorFlowLiteCMetal.xcframework.zip", checksum: "bfd5dd9cf9ea8ee1ae3897c5042628538c0f4c93f5a72afbc49e496004d7eda1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
