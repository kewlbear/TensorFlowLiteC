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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250611/TensorFlowLiteC.xcframework.zip", checksum: "902e502c8e827300dcea8c036644fa033b30edb8fff594a397397dc0a8794315"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250611/TensorFlowLiteCCoreML.xcframework.zip", checksum: "226feb4bb7d44bed1e825a2137d7d92ad631119f42a9533144671fd0178bcb78"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250611/TensorFlowLiteCMetal.xcframework.zip", checksum: "bf62a66ac292b51e72136e7694c1db2b85b5cc840517ba8d3f5a06e7339bc513"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
