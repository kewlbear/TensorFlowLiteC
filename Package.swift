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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230613/TensorFlowLiteC.xcframework.zip", checksum: "8a4dd2956615c0d8c4f71d6818836c1f5a6acd2edf055e1eeaba2f678332210f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230613/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6971f74bd7dab7122ac2ac7c9d5ca89c395385548e9f0d48229b3edd337267db"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230613/TensorFlowLiteCMetal.xcframework.zip", checksum: "0071b6723c12669bc51b8982c747333ef76ee64a36c7319f25e984fe5cfaa576"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
