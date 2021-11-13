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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211112/TensorFlowLiteC.xcframework.zip", checksum: "de58144790638e3ccf8892b46b362e366bb077eb28f6e26552c8010e2bfcc31e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211112/TensorFlowLiteCCoreML.xcframework.zip", checksum: "84bfcf12069d1a06626feab9715a0bb967f34f37783b30bcfeb01204719d6376"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211112/TensorFlowLiteCMetal.xcframework.zip", checksum: "412c899cacbdeb38b06624d2a5155ff7b13059a8cd58ad85051c37a2741e31bc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
