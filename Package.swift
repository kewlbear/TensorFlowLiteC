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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210610/TensorFlowLiteC.xcframework.zip", checksum: "e0484f1bb90feeabf22779f634659c8be4945e49a0a19d6c8c52cc07a4ccdb91"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210610/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f64de09ff2e2128ffd1fa240ca4c770e18a41a2cea396e1b25a4df4233914139"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210610/TensorFlowLiteCMetal.xcframework.zip", checksum: "e0a00b0fe8cd231d0c3ae4776429fccaae635f53ffccb16ec9219a0d25bb9ec7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
