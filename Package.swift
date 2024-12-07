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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241206/TensorFlowLiteC.xcframework.zip", checksum: "23cf434c508cc1efa3847c74b71c571fdb6b2db53e8ce191b7039df565130b01"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241206/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6c36dcd00f5e77bc67b69a4338bb2d74f84f158db8e68733b95519fd5d9d93e1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241206/TensorFlowLiteCMetal.xcframework.zip", checksum: "7e7e613d555efd6fb87ec45f9e662ab89eb3587a11030b555f9cc53e38c2475a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
