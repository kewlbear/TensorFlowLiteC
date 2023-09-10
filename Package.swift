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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230909/TensorFlowLiteC.xcframework.zip", checksum: "9d01cbf3ca2a45df067d1e567cb1d3c90eef3e9949f8114538bb395bb7349830"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230909/TensorFlowLiteCCoreML.xcframework.zip", checksum: "530e4b4cad1eeddf3885d78c0cd5bc194d26e782e6e9df6f6d68756184e757b3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230909/TensorFlowLiteCMetal.xcframework.zip", checksum: "73194f2878f26c9df79d1b698ae5623bb06337fe28acc10af211afd51e87cb9c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
