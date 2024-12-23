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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241222/TensorFlowLiteC.xcframework.zip", checksum: "1382a8d7e59efe6e9bdf20460315e27da7807a58f1bfd6d6f452e614fd35bba5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241222/TensorFlowLiteCCoreML.xcframework.zip", checksum: "742f4c4e4af20696cd4aabf26bea863bbcb24362cc7124caf123cde62a2e0681"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241222/TensorFlowLiteCMetal.xcframework.zip", checksum: "d3986d6afae627a5af4c67ca78ccb74c96ffa03fd9dc8fec363c10496b3003b6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
