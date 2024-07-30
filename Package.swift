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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.17.0/TensorFlowLiteC.xcframework.zip", checksum: "5f88de2753a412c11ac6e33d0f29161936a739c049f57a861f62027b91be35b7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.17.0/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2a10a510aa6d498cccd054f9708408729626761258f9c70a4f12716c15fa8eff"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.17.0/TensorFlowLiteCMetal.xcframework.zip", checksum: "0791ce5d966288f8809545688ce945b8bda85d5d5216ed17d4224624adf6393d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
