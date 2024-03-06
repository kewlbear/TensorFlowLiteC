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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240305/TensorFlowLiteC.xcframework.zip", checksum: "939b9e48c03853120009814fbbbbc5c96a82b3b5bd445d708a1dd450b0615634"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240305/TensorFlowLiteCCoreML.xcframework.zip", checksum: "999b84eb7760db542af4dbaf5d07739d612fd50358b36b0e54a80a2eaeb1731f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240305/TensorFlowLiteCMetal.xcframework.zip", checksum: "f274c6ae6072009b564eaea2abf6bb68eea5f9a59b4ecbe742783f72f6fead1d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
