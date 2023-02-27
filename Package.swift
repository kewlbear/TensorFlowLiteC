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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230226/TensorFlowLiteC.xcframework.zip", checksum: "0d6e290140bbe1bc0801d8fc7750159072d13c1aa221d57716df35519b334456"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230226/TensorFlowLiteCCoreML.xcframework.zip", checksum: "de184593a9d3c5690ad26a03eda67a041e99e711cdc4ebaad7b70f3aa79e393d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230226/TensorFlowLiteCMetal.xcframework.zip", checksum: "d1f1ce5b601097a45d20e7db413b161e80ed3c6d5a6ff14b93f09817f71d5726"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
