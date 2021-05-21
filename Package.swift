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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210520/TensorFlowLiteC.xcframework.zip", checksum: "3d5b226b667b5ba416aa9955ffb1d9155f1432a518a5b94a69acfaa7d18da129"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210520/TensorFlowLiteCCoreML.xcframework.zip", checksum: "21e9cf0398efadbdfbc68bcd4405d9716c225fbbf2c523c2c21ff29acc1a3b30"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210520/TensorFlowLiteCMetal.xcframework.zip", checksum: "c35574dc83ebf5cc1401a8c9d63f937de1b4fdf10884bbb0e2899c746787b0e3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
