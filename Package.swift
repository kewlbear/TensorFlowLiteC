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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240209/TensorFlowLiteC.xcframework.zip", checksum: "4e52f0a2eb2ed405a96d79822b5fdb357d5104e1fe7d17e817f7300c1ebc65be"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240209/TensorFlowLiteCCoreML.xcframework.zip", checksum: "623f285136895ee7f44c8563876558646a89e8ad10822b5d67497177becdc644"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240209/TensorFlowLiteCMetal.xcframework.zip", checksum: "9be03c8ae14d31164c71ef0ce71184252b005831cc95bbf74e541c0b339d7813"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
