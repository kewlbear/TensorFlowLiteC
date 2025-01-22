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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250121/TensorFlowLiteC.xcframework.zip", checksum: "788397dc783d69990433c55026ff34db7d2a69ba5c54093fc6b7e482e79c977a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250121/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7ea0173245fd75bf105a41edfa3efb39bd56fc36c9526b1e8898bea7ade0a4a7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250121/TensorFlowLiteCMetal.xcframework.zip", checksum: "0ef83d7cd2b3e70e98c29cd01017f2da7d6cd58dcb1678df30c7e8206281286e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
