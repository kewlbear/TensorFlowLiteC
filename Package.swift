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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211125/TensorFlowLiteC.xcframework.zip", checksum: "ace597b1dcd881a8df74981fec0a2a608d8dadd1567008860c75afa52c8dcd30"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211125/TensorFlowLiteCCoreML.xcframework.zip", checksum: "99b9cd00bf4001de066efebf4956c1d10dc5415cfa40baed58695db15eb8786b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211125/TensorFlowLiteCMetal.xcframework.zip", checksum: "7941f00b2a6f42eb4ba7bb6f2ab716d5b10e6433de38832819f026bfbcd8eaed"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
