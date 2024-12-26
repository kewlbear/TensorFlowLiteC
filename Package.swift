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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241225/TensorFlowLiteC.xcframework.zip", checksum: "91d0c23c17d2ce8a6ecf5a576f4af5dfe8ccecfd1b05a5ecd788c9591f49bc33"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241225/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a57e8f42a47c7d38840821583f1b28660539bf35a8fb67e8c45e8301d5144d97"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241225/TensorFlowLiteCMetal.xcframework.zip", checksum: "258096ad9ec20b63d0e362fd5acca048ebad34ee55037e43fecae907dd412f25"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
