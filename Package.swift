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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250527/TensorFlowLiteC.xcframework.zip", checksum: "952fa3945797da9c19760e4777ad97c6d380dfacd349f95ec69af30101ed894c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250527/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1194920c334016e01808bcb0536149b659f9366430bb4c501abb3ed6e06f8bde"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250527/TensorFlowLiteCMetal.xcframework.zip", checksum: "dd1225499cf66fdb62eb7a5809a3b3211b68410c6a460b8c99a94eb7005b3e5e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
