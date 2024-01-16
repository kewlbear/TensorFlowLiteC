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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240115/TensorFlowLiteC.xcframework.zip", checksum: "f9ca410184e26802575263952de223567a11359c3674288f670259f68755a8ca"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240115/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7d3a6fd5b75a60e5c40cd4b0812ae56d7615934550b3a07b2f2ad2fd507ee1ed"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240115/TensorFlowLiteCMetal.xcframework.zip", checksum: "14d3fb9e2e26c9130c08639296765f6a784b77ba07654bcbcfa6c4d9fcec61aa"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
