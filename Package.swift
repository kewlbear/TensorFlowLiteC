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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250503/TensorFlowLiteC.xcframework.zip", checksum: "eec0bc1151471e169b390fee132b6e93fc3761ff0efb18d4c530d6f5d4657e6a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250503/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0701a968d8a332cf894fbe30fae9af56aa07894554c0000e345a02c2b7c244ed"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250503/TensorFlowLiteCMetal.xcframework.zip", checksum: "a6534f5bc954561092e0534b2736954b3da091063b82c38f74aa1ae75454e89c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
