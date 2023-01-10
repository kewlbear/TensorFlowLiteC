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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230109/TensorFlowLiteC.xcframework.zip", checksum: "536262e45e48e91086da9e18c7187b79ff3cac74befd827c4149c9b2c4182687"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230109/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e151e80afb41c76b13e0629c89684a666d3c8166da64d2562f7afc6924c51437"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230109/TensorFlowLiteCMetal.xcframework.zip", checksum: "108d16863fbeaa24157e6838def6a8da641eaa43737b2373cbbe9684013480d6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
