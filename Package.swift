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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231229/TensorFlowLiteC.xcframework.zip", checksum: "df626de094b68a8d3ccfcb51614c130b46a27ac56b8eab1a4e8a5dd726167ee7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231229/TensorFlowLiteCCoreML.xcframework.zip", checksum: "68ca377e22a7a3e9da3b9803109fedf8e2017b821941d9f9f679936d08d30e01"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231229/TensorFlowLiteCMetal.xcframework.zip", checksum: "a0a2e77e35604ab282283f654bb5b42826c1ff09fb0116d5e914971af7983e53"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
