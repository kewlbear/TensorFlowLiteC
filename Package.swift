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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250206/TensorFlowLiteC.xcframework.zip", checksum: "6651852ba3430553a9bd20716ec7feaf2bc811d7239b3da329782eed024f4097"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250206/TensorFlowLiteCCoreML.xcframework.zip", checksum: "79f2caa02e7ed63292b2670905499f814972d23f77b40b88373a0b8719ef9792"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250206/TensorFlowLiteCMetal.xcframework.zip", checksum: "a9a1d41a6e50cda010c00c907d570c219e2496f20e01ec4c739e31582455889a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
