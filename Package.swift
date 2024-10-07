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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241006/TensorFlowLiteC.xcframework.zip", checksum: "2544594642926e2fee4d234cf359e16aae162c03c8020ad92143014bcb4e5816"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241006/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5459535d25514f15f5602fe08dc6d812cebead9d7327c557f75c2e69695dab41"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241006/TensorFlowLiteCMetal.xcframework.zip", checksum: "2727e393c4b8f0d7181a42392fcb3a9baa0e4104d0fc6df7716d3a03c8ae7758"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
