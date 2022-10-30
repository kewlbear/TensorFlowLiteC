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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221029/TensorFlowLiteC.xcframework.zip", checksum: "64052480c6041a69fe313cdf88c974e6b95a3a6af28003b5c7b022787400d554"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221029/TensorFlowLiteCCoreML.xcframework.zip", checksum: "16b45f9e4643c9a4e271ad4aaf487469fcb83f70ac78ea9e739aa9623315ca17"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221029/TensorFlowLiteCMetal.xcframework.zip", checksum: "d3211e4f0651ecc71e138c5aa8d0e4f5a87bf0ba3d8dbd10e66d03f6f138862b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
