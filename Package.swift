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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241005/TensorFlowLiteC.xcframework.zip", checksum: "67dcb2dfcb27ea5df0e4c45a1266142ce7fadc7d6e5911bdfc3b1f64873d2d56"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241005/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d829e3bd3aa94ca48b6b209eef4ed1dbd0c6c227ce0408c540b4113ffe062e26"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241005/TensorFlowLiteCMetal.xcframework.zip", checksum: "668aa2b26a1bb3fdbcaf4f56f33bc39b9b2a1352ecbbc0b46620708d8deec055"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
