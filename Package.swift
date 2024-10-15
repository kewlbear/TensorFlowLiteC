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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241014/TensorFlowLiteC.xcframework.zip", checksum: "097972b83caf2dc87ced453a4f72be94d331dacdc4e0f2cd6c2c8a00a27d3851"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241014/TensorFlowLiteCCoreML.xcframework.zip", checksum: "be07d7ae5b5884d4dd52f0171534b05ef87c932650bc94a537616a077af66282"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241014/TensorFlowLiteCMetal.xcframework.zip", checksum: "8675a29b65d38349ab128a7f81203e4ac3b6f2f4bdcfa44cc31028a2a300052d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
