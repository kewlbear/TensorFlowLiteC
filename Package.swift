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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221019/TensorFlowLiteC.xcframework.zip", checksum: "1255569dc4226660180d7bb98471ecb9b9938f3df0c0837bbc586530c17ff2aa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221019/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dd8a3a7f6b9efe5d3f8a5f0cb499cdf55ed8aa31e230cd693015636493451898"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221019/TensorFlowLiteCMetal.xcframework.zip", checksum: "9dfa6be174031ea5c8cbe7f61038c1f966e34cc4f6a6cf46216b876c7f4b5318"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
