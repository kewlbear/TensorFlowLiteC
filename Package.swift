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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230503/TensorFlowLiteC.xcframework.zip", checksum: "117bba7f4f22b19ca895f9eeb132217a6353eac9248aa377f513d07d96d35d2b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230503/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a0c6a42a227a4dfb8bae2406c8282af225c561894f1a6ac00bc0f149bfd77fa8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230503/TensorFlowLiteCMetal.xcframework.zip", checksum: "364d3700bedeac55f22b81fc1ac0b8d45dfaadbe1e0cc02a523709bb51235aae"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
