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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230201/TensorFlowLiteC.xcframework.zip", checksum: "a8d6d7ecd6e089b99d2ea8162c0ed9073b5e5e8c3d2c17f8d5ee71073c6c4de5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230201/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7ab397f30406588b3b0bf74ef7d91404f96ca3a6c673e25210cd9b3fe04acfca"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230201/TensorFlowLiteCMetal.xcframework.zip", checksum: "a79e9ca999eb5fd38d5ec68b504e80b10fe893145e1e66595cfeb90f1aca5c3a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
