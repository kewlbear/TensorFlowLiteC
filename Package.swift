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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210409/TensorFlowLiteC.xcframework.zip", checksum: "acbc653a9595db01ad456e05d749ec49c51be3eedcf14b31b8bd817e159e20e6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210409/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3a28ae2233cd62830dc54b9aa8821b916763efb15cac5f4da7305b8ad31985a3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210409/TensorFlowLiteCMetal.xcframework.zip", checksum: "4e9336b15c81fbfa6571f18f0f217683cb6160903bfb07398954f4275853a692"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
