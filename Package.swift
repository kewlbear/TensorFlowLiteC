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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210623/TensorFlowLiteC.xcframework.zip", checksum: "0a1146e5e8d4f54efbd3db347542c4804efa3724de997f3a7c17c42c614b4f0b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210623/TensorFlowLiteCCoreML.xcframework.zip", checksum: "115a136172929565a72d8100be8864365b6101bc7cd828c085850df19fd98273"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210623/TensorFlowLiteCMetal.xcframework.zip", checksum: "3f55617d49297792e2555e3007b1e97b27f451c8a09b88946d8f6a7105678121"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
