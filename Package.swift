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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240121/TensorFlowLiteC.xcframework.zip", checksum: "88d2adfa21ec61e1d3fb0422d3e9e2c030efffca592964346fa51ddad2377cd5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240121/TensorFlowLiteCCoreML.xcframework.zip", checksum: "74bc54eb5d5e3a206222f7a003339f75bd39a886bc5b797ffac14f0eb1768b80"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240121/TensorFlowLiteCMetal.xcframework.zip", checksum: "35f817affd836a1f217a726755d539d3d78a2a49685e1b0d066dfd455c33c135"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
