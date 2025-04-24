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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250423/TensorFlowLiteC.xcframework.zip", checksum: "225b0da1a292d8adee98b13cda6d94b1f02249930d7e1bc55b44f66ca29d449d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250423/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0f23819e6f8f6c99d5422b84cddc59733a6ee9530421bf4352313274bbf5b950"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250423/TensorFlowLiteCMetal.xcframework.zip", checksum: "f9beaaf77e4b352b63bb57e3ec9500d75ffc56ca09f5b7c289f2a7ebe51b817e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
