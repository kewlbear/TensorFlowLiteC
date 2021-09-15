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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210914/TensorFlowLiteC.xcframework.zip", checksum: "9cc4c365fbc54af59f89ff7f56ffd7ff4603c5297a8d44761d3ba928324f6c93"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210914/TensorFlowLiteCCoreML.xcframework.zip", checksum: "002f7f25d74dc945465192aba9c2b9b0b55d5510b4968ed0321bbe4867520751"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210914/TensorFlowLiteCMetal.xcframework.zip", checksum: "0dc997b82c8b88cb7a2b2bb7855b5326fe24e276e300d2d361771d05398d371c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
