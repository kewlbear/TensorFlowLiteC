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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210401/TensorFlowLiteC.xcframework.zip", checksum: "423d79ffb5243ed07b41dbaca8accc93cf9fb7205678ee9aea4fc0760fc3639f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210401/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3002b231bbeea1d5ba27e714005c94eaa160a5915c6388713e490cdb226c376f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210401/TensorFlowLiteCMetal.xcframework.zip", checksum: "3c288b6fc38685b76687bfe35ea9d38581d4cb72008afe81574f5e54f380f4f1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
