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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230630/TensorFlowLiteC.xcframework.zip", checksum: "7eadae8ea5a89101d554c7fe8b0afa4f4eb4f7b19aea7c1fcc5d2778cef8a0be"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230630/TensorFlowLiteCCoreML.xcframework.zip", checksum: "425bba13cf24eca881ce6e97834dddd1e0688f4708a635af70d175482408821e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230630/TensorFlowLiteCMetal.xcframework.zip", checksum: "d7a5871b1dc9d80a2f885ebf695dd340820cc71561e70ae0f56afc344e1199a7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
