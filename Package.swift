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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240221/TensorFlowLiteC.xcframework.zip", checksum: "c0ba92c93f69964ca896cfb7d064581b880965d97512a8972c4bc82cd95274cf"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240221/TensorFlowLiteCCoreML.xcframework.zip", checksum: "75cd2643f82e402b79e9ceb0f6a4708e39a1ac15a33c4dfb5206e98349d7d75f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240221/TensorFlowLiteCMetal.xcframework.zip", checksum: "30535b4e38259219de6352c5fd1c534ebff6bcba860fb5100aa08b59528f1dea"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
