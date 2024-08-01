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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240731/TensorFlowLiteC.xcframework.zip", checksum: "d4a4c14e924bea59e74d00203daf3ddf956558011c4e60f3edb2ffbf1c1f18c9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240731/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b7347e71de57fabc56765ef43161392487a9bcae34e904b3893babe463be92b9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240731/TensorFlowLiteCMetal.xcframework.zip", checksum: "3425d917b49fad6a4a47a6d888dcf63b32cb2c3f62ec3e5b787469549106d354"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
