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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240204/TensorFlowLiteC.xcframework.zip", checksum: "780bcba8bd2710e7bcb02d3b88a935000a6c5ed84b70a5056d89474b208e68aa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240204/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3fa14acfcc928a627fd9bc6f25f5381236b5938648dc0c851dc7f6b79b35c9c5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240204/TensorFlowLiteCMetal.xcframework.zip", checksum: "49f3f41e9eef540785e9b3a5ce280d6cf457930509c8b5c91a6b908109dcecae"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
