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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250322/TensorFlowLiteC.xcframework.zip", checksum: "6d627b4c3d01d5e5bc3e9ba534ef8d2b2660ff6530a26e4a1bec2db78a670e57"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250322/TensorFlowLiteCCoreML.xcframework.zip", checksum: "91cb9a8611b1ccb079263b75b61fcb2b606057f69951dcc279a2c5f467917c8e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250322/TensorFlowLiteCMetal.xcframework.zip", checksum: "0e7dafef32f170fbbb408834306e83f36d3494511f35bed560da00c1f27b602f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
