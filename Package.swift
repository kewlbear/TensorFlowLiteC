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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241125/TensorFlowLiteC.xcframework.zip", checksum: "15ff6d2f8dbf47aea083c45163710585b3d173021b72b6849ca378262ede90e1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241125/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ce40e1f8a2f5ae9b6b2818af653e91446b0e5e86822f0b0c09c5eb5bc62d9230"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241125/TensorFlowLiteCMetal.xcframework.zip", checksum: "4bff9cbeaddffb4605dd06e1b5d42c484b25619f6fc01b1f20e8d69d048c1b0a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
