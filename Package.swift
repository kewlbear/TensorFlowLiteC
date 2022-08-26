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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220825/TensorFlowLiteC.xcframework.zip", checksum: "051c75bfc6f446f9e7826822438dfa5076d06abdcbbec1c850b28b16da703081"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220825/TensorFlowLiteCCoreML.xcframework.zip", checksum: "08fa7415680992633a70cffb4c8c1e36f562054b57311472ad22a7db63a9aa22"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220825/TensorFlowLiteCMetal.xcframework.zip", checksum: "4c6074f39d01c17eb03be18a8dc272c2ff9857752759132ca08144e1e9c26ba3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
