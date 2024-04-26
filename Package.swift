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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240425/TensorFlowLiteC.xcframework.zip", checksum: "5d29d9a43e716f7a3ca4c023f5d2fc7c2ef67bddd34e0bdebb4f58a8e6db24cf"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240425/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e9539b97773690adc40fae6d6e6bb2df73b6307fed6ca3f421459c0270e5d089"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240425/TensorFlowLiteCMetal.xcframework.zip", checksum: "20710ebcba4343e26ef3d3d968c5ce530bbd2948143ceb903d006800f24fd83a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
