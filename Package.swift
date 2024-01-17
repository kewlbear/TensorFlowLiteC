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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240116/TensorFlowLiteC.xcframework.zip", checksum: "184051671e9ab2e3dbbe2f15d4fc2479e921e46786bd9e8bd890512d3e5d9deb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240116/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c9d607e6f4fba0f0b923db49b4a8d695cbd6f028a4699f0b29740f1aa94978b6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240116/TensorFlowLiteCMetal.xcframework.zip", checksum: "8e1f8001002dbe8879ac6b0de2a62697b3b718e581d6efc661ecd5b071c686c8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
