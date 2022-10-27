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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221026/TensorFlowLiteC.xcframework.zip", checksum: "b262b59b098d5fd4c126c5445f1c19ee1016e4be77f51ba66d052f0f81b3126d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221026/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5f31222807c34425bbde6d41c02ed6ade167e9f30eefbbc517242360b538a46a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221026/TensorFlowLiteCMetal.xcframework.zip", checksum: "0c49b544c82fbe36426efc73f9e8a70131e1a91236e466456cb227249650e967"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
