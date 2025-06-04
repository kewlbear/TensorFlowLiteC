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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250603/TensorFlowLiteC.xcframework.zip", checksum: "7aecfec7b79be89706a09bca9ffc74520443651438cb59a9b02ad6ed8e63ac2c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250603/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f64e6e70a1ef342945ca829507e7c500efedd3fe91de1999cd5a25f6495401d8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250603/TensorFlowLiteCMetal.xcframework.zip", checksum: "dc7da60f116e9f063620f03a515aadbf63458a51124e0ef9a450577eb114e9e6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
