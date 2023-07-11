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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230710/TensorFlowLiteC.xcframework.zip", checksum: "ed85ee7677d36804c0204d5f6dba4a41a60854f16c3d5511b9a772cd5c1d4e8f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230710/TensorFlowLiteCCoreML.xcframework.zip", checksum: "117f5a51625c44b27c193812b0482c46007c8c574bd01331fe0666e989b77a6f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230710/TensorFlowLiteCMetal.xcframework.zip", checksum: "65b127384aba058ff327beb557b3b0016cb17b3e7f995385d443637c3d7b6f7d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
