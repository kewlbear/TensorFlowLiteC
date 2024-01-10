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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240109/TensorFlowLiteC.xcframework.zip", checksum: "a51f7eee668323c8f06e40ce9d503249789a1bbd1b1a340289ce8f2432f5c04b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240109/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fffea805c0dd5e40fca6ab3454d2f62ab817ec2ebdd9b4b6934b7827e6cfe05f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240109/TensorFlowLiteCMetal.xcframework.zip", checksum: "6e81cdf8f4c7326a22df1a9b6e0e6e31b0eeae94755a6943f1b57494df63bd7f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
