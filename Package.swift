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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221115/TensorFlowLiteC.xcframework.zip", checksum: "88528679885ef7711e929863ef579e83b4fa4e2d138d92861567a3f67006d120"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221115/TensorFlowLiteCCoreML.xcframework.zip", checksum: "be0b54ea4e1a1e8fca9946e4c85daf3568953b2e23a7df8774936721a3fa2897"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221115/TensorFlowLiteCMetal.xcframework.zip", checksum: "0f6679454323704f4d5d728b0f6310d73c34c51e0d30c733811a79c7a4a7ead6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
