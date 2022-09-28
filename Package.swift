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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220927/TensorFlowLiteC.xcframework.zip", checksum: "4a3bac0c30f00969e7764e34ab0d53c5ab88919ec050cc9ec667eb7d90d29f87"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220927/TensorFlowLiteCCoreML.xcframework.zip", checksum: "34fa121328a6ca36c7ceb9f63efa6067d6a87fc74cf538cf891c0cc662da8480"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220927/TensorFlowLiteCMetal.xcframework.zip", checksum: "4c6cd7bcae9664d8d1935d02cd44505755974cc0aae0bcfe9e458b4a737b218c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
