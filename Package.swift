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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250506/TensorFlowLiteC.xcframework.zip", checksum: "cf412e9dec2f33d523f6ddd2bb312a7fd360eb04e1ffea9ebf8c7f414b36268b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250506/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0f3b92574fd8236443145d8c27a9ca98b4cd368cd70460df7a8f0efd74749b83"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250506/TensorFlowLiteCMetal.xcframework.zip", checksum: "00c36052ede6d3583302842bf15323985a7eac9fa87c02725016a7744d6ecf51"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
