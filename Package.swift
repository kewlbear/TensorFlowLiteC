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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240723/TensorFlowLiteC.xcframework.zip", checksum: "6c9f6a94227b986954230e220d88225bf6124081efd3e4a2a0f53a9b4c71c81a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240723/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4824656f533456f2ca5b9a810f95614dc4afc5ff1216987a0b28f5e00e3432e0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240723/TensorFlowLiteCMetal.xcframework.zip", checksum: "c58a56c80a9fb63f76fb75500e0fdf59ab22ca80fce715001d9762c41542fafc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
