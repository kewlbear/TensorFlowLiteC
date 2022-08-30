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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220829/TensorFlowLiteC.xcframework.zip", checksum: "8d4d9caf07dca37b7c0d36752fc1629f023bed1fc027911c3da704c2734364b9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220829/TensorFlowLiteCCoreML.xcframework.zip", checksum: "804f3a9f4987d46e6a205faa4ded58894b6b4fcdb75132099ebce2cff2c1aa2a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220829/TensorFlowLiteCMetal.xcframework.zip", checksum: "7a4b7ede2677fe0e8d2557b9890b461d7a475e014f4b9e9e6bb4718fa46c7dc7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
