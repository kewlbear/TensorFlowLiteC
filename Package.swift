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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240317/TensorFlowLiteC.xcframework.zip", checksum: "7a65376ec94f484f18de987c58d99d035ac55022aae621dd880b00986e767245"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240317/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bc3d34ee65f2635a185901b7fb622c5bb293e416fc3867ad312d343c9fcc354e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240317/TensorFlowLiteCMetal.xcframework.zip", checksum: "535bcd9396c04febc7ed6792ca33775f60a1ff7d3a88960c2e9df08a5908f7be"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
