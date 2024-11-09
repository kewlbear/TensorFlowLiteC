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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241108/TensorFlowLiteC.xcframework.zip", checksum: "2a6935fe6103b6d2acc4a29f3c3a2851b990452fe05acefbf26c6eac94c7467e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241108/TensorFlowLiteCCoreML.xcframework.zip", checksum: "796e7e5b8b44a3775f41e65e9073213d6549f19a62f32da3cb5cc4bb966a8536"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241108/TensorFlowLiteCMetal.xcframework.zip", checksum: "73e8a5ca32e9660f3a3366c9c9e11f29823a7f02a1c073ece8f68e3b3949e586"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
