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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231019/TensorFlowLiteC.xcframework.zip", checksum: "d0a45ed87c21194bf2e42f416529324c3de92350dc15775a7967f65dd14717eb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231019/TensorFlowLiteCCoreML.xcframework.zip", checksum: "50a526757be378f5f80eabce63ea1d332c6dff56ca61aa4708efe5d8e999298d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231019/TensorFlowLiteCMetal.xcframework.zip", checksum: "e22762b93edf7254d8db25b9cbe55a97e0ac1c3a61e9d7dc6416be80d273c71b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
