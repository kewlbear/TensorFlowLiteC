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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210325/TensorFlowLiteC.xcframework.zip", checksum: "182c2718fbbc17d448f79cc1d19778dc6318636b124c90eeb8fba9fdb6344116"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210325/TensorFlowLiteCCoreML.xcframework.zip", checksum: "39dca9f1bcbc04b35efda2a6295888d5de5e14c8148393ecac45d3b43f6eb369"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210325/TensorFlowLiteCMetal.xcframework.zip", checksum: "41a91a482439ffa67a2312b971694a38842c16d58fe752b215d39f7735188212"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
