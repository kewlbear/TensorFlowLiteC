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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240103/TensorFlowLiteC.xcframework.zip", checksum: "1aa77d6aab38b74b4626f070119b73b14663f047ffe1d97a34502b2eafff123f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240103/TensorFlowLiteCCoreML.xcframework.zip", checksum: "557c0f50719a36ace8d15285dcb200f35b0ad8c67cbfa3c1820960322d94048b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240103/TensorFlowLiteCMetal.xcframework.zip", checksum: "2acdd41fa60a77058d2d026aeacbdea9f3b75000ac8e2ef8cd1cb961cb95f27e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
