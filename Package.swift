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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240117/TensorFlowLiteC.xcframework.zip", checksum: "1f40c0dd7efcccc34b57213b79f48903f1330a93ab488b45fd228acf6076253d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240117/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6bffb53d3ed92bb05c8cad34d6585bcafb7c6948da2d4cef2b899a49dfccbdd6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240117/TensorFlowLiteCMetal.xcframework.zip", checksum: "753cce4cb58fd7d0b81042671e4283d15d5e613b469d9e82d1fa5c3f0f3291ea"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
