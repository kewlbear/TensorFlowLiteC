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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240921/TensorFlowLiteC.xcframework.zip", checksum: "20d16ce5781ba453aee44c5e4371d26fd6a361461df5e22fb57c7a169d62ce41"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240921/TensorFlowLiteCCoreML.xcframework.zip", checksum: "07edc1878c470a990fd33c4eb0c5a45d57cf229ee5cafb257074abd3c142c98a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240921/TensorFlowLiteCMetal.xcframework.zip", checksum: "10ebe0002d1cd66ce1e9da93fa9febd45f982cda0302fa0b6d3a176f34d6743d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
