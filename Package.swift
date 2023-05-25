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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230524/TensorFlowLiteC.xcframework.zip", checksum: "a6b6e05a553a92b299ca250e2037f1f94c098e031b946602917f521a4788983f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230524/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4dc99a89261ea1d4140e525d1c7e2283c766906ee2bedbf0dda2cdcfe541b6ea"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230524/TensorFlowLiteCMetal.xcframework.zip", checksum: "1ffa01e07d65cbc969d138a50b1466934e57eb49550da00b2bade648cf4cb8ce"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
