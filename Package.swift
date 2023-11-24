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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231123/TensorFlowLiteC.xcframework.zip", checksum: "55a5b126a32d6c9e821cc10c873348049eae03e858295232fc840a7d547d6c52"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231123/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a78a97bac733afbbd76ad6a4c3c9fb4516fe801d200abd126238a798aa9878a2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231123/TensorFlowLiteCMetal.xcframework.zip", checksum: "140493f5101ae73c48b1f6e7b6f1c6c46523b76960fb2311469ff5e708165e7b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
