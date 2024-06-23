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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240622/TensorFlowLiteC.xcframework.zip", checksum: "7d7d83b3283d53615775e1be7b7a76007bcaf7365bb1982aad359c0b865f97be"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240622/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dac6e59db443920474b53c70bffd9bb6e4c50177ca571d8020f90fd8d3ea6ccc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240622/TensorFlowLiteCMetal.xcframework.zip", checksum: "caad0867d9b26dc74c69342d0b46b20799c390cebee12bb6d8f436b08ce20358"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
