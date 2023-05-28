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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230527/TensorFlowLiteC.xcframework.zip", checksum: "3dc1ea718abe012aac27464594f1ff1d7b75a5fbf6c8061b1f04c9d9855872ad"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230527/TensorFlowLiteCCoreML.xcframework.zip", checksum: "10e2a03b7bb784224c50b6bdb37950c2c1779eb279c6c3466e673c52893f4da3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230527/TensorFlowLiteCMetal.xcframework.zip", checksum: "29413c7a063b62575e06d9cfd47249dac9aa89d8b10980ffe1f78f27b7ac547a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
