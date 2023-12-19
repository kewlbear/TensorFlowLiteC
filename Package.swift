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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231218/TensorFlowLiteC.xcframework.zip", checksum: "52932c6d7459fc87a48500d6643dc3dfcb02ab37b59843ffcc2c25bbeecebcc1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231218/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f92cca87c9333daa3166bdb37e6200026c2cb276ba98700822888e32b08fb60b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231218/TensorFlowLiteCMetal.xcframework.zip", checksum: "6cc659d51d3b33b872b98d2445cc8b7b13e9a5e044ea2e604987a3ad9bb20e1a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
