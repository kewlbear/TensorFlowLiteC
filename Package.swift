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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241008/TensorFlowLiteC.xcframework.zip", checksum: "082a29c5498d3bfad7064b630c977023508c0ec94bae519af972116cd5ba5b74"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241008/TensorFlowLiteCCoreML.xcframework.zip", checksum: "94e4e498d0833c49c3e1e1bda676a7dc891fb6b8796e5cfc8106f4160298057d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241008/TensorFlowLiteCMetal.xcframework.zip", checksum: "c193d86e03c24bd8125e1bf096ab08b1e1dd277bc95022cbb445d214425e5a4f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
