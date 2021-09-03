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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210902/TensorFlowLiteC.xcframework.zip", checksum: "2f5bb0400b1fc767f0980a784a8b1f30d73c079d5dd32d2e450384aa27bc5d70"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210902/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6ddfb154890026b7993612ccf02a6e22d8655cf1165e62d1355e544c32290393"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210902/TensorFlowLiteCMetal.xcframework.zip", checksum: "eb596660d4629946354916d4b7c5dfebe2f8b8f6860643a24ad55d154a2b0a59"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
