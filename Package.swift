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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241110/TensorFlowLiteC.xcframework.zip", checksum: "4b4c14b1270d65d027b74fe329055d8629955e25e96c37285f94df2e006a33c6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241110/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0cf7a9483d789a900a42c7965f040ba7fa534a7340cfc4292fabbfa7f2c2a39e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241110/TensorFlowLiteCMetal.xcframework.zip", checksum: "6791b6b106222366782849b5308a9a3932e271921abba9a7253877df2d552bea"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
