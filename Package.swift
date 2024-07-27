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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240726/TensorFlowLiteC.xcframework.zip", checksum: "9092fb7a040654846132ee75905cd18c29d469049946cce65bff73e0957c788f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240726/TensorFlowLiteCCoreML.xcframework.zip", checksum: "929b7e8df0b1a9a2024d637e8de6fdb6a0fa0c029ee6bc455a2576d5468cafc3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240726/TensorFlowLiteCMetal.xcframework.zip", checksum: "16f4d63f80b7428ae6b8e6bfa920976333cffd1e10132835e160e2359fd45905"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
