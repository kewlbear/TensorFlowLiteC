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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221126/TensorFlowLiteC.xcframework.zip", checksum: "86ed82b0622ca17faac0ebf58a197cc858d7b554d9e67191289d25d76d6cfcbb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221126/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8eb3369654d9460e93802f0d739f25be8c00382aa678040771ac0a02535fd42e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221126/TensorFlowLiteCMetal.xcframework.zip", checksum: "97dfaa8a187f8c9b2798ed5afa6a6761cb08d8d9bc7b89feb4e6a5d4925e7c07"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
