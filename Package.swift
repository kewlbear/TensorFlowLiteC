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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221103/TensorFlowLiteC.xcframework.zip", checksum: "c7617f999c5488a71769a845f4ca3feef5ac1c6c15ac14a03864136e3d0f9ecb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221103/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c196b54b9074694dde3953facd0984909435841181f15097d7b5321707ddfa04"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221103/TensorFlowLiteCMetal.xcframework.zip", checksum: "d7250640a9437c7cefbde36b9fa3d3767df416c84002cd6782cb86ca0238c32b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
