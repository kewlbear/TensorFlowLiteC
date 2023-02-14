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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230213/TensorFlowLiteC.xcframework.zip", checksum: "089a5ee04bbcc5c9b15440c7a154cd4a5dea4dcf7cce294251d4ca0efca239c1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230213/TensorFlowLiteCCoreML.xcframework.zip", checksum: "abbd7c7065c1b7004bf972d020ecc57825e222738d2af0aef8db09700e2081b4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230213/TensorFlowLiteCMetal.xcframework.zip", checksum: "71a8a5d0c1caf9610f8c777d130dc33f8fa891e9e366482c41c4b58a52386ca0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
