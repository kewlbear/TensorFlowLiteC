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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230209/TensorFlowLiteC.xcframework.zip", checksum: "01e9cf559e2d0e981a90d0c68cc8e9f648f3831fbf2cde96a9a29b63816518e6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230209/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1ccc425ddf14c40727fe145d6f3431a156bad64f6f47ad7fdecd3881f6be574f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230209/TensorFlowLiteCMetal.xcframework.zip", checksum: "9e09bf91a8a357ddde33f8c8fc1d5ce6580477197c7833a466fced9f0d4fccaa"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
