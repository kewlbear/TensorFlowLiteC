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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240517/TensorFlowLiteC.xcframework.zip", checksum: "469845da055c651c3950768ece50e9ce09991cb27976da765c63de9daf430360"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240517/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bef17bddac1259d93dd2aacb98d995235a6cb9f5093cec6d760e1b72c8d28458"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240517/TensorFlowLiteCMetal.xcframework.zip", checksum: "c62ec2ae5134281f747c2735f36a6e371c67b8c4510a3e696787114f6635c141"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
