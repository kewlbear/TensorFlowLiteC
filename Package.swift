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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240924/TensorFlowLiteC.xcframework.zip", checksum: "4a24f95b83526be9d6ed9dd2aec5de818a3211bc8a66228974a9ddc3ea5611c5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240924/TensorFlowLiteCCoreML.xcframework.zip", checksum: "598f95618dad2af2006ea2a534af9aed3b251ef06ec2c8a9a0f74bc94b1f85b5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240924/TensorFlowLiteCMetal.xcframework.zip", checksum: "301f149072da02931d2d5b0d9d7233ee867c0a7801652579fd0487a88e56e538"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
