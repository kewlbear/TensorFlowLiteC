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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240210/TensorFlowLiteC.xcframework.zip", checksum: "6b6e66d5eb001b21fc068240e962326237d1ced3e00d46a6ed002db568fcb9ce"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240210/TensorFlowLiteCCoreML.xcframework.zip", checksum: "297cd2c49f0c285be8ceb3dff67129e6f650a5a401530cbecd4253af144a20eb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240210/TensorFlowLiteCMetal.xcframework.zip", checksum: "332b32b9058dff179e08700833c99eee5c52ff8d03b7f6b8da38635f427ed94c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
