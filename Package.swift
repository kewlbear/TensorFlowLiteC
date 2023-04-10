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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230409/TensorFlowLiteC.xcframework.zip", checksum: "f2eef9156e1a8c2f53d31045f37a42bcb0aadc691cbebcf1c34d80987bba1bc1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230409/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e322c4dce17d56297ade071ab6a0d9b9d4341ade8d96b56240b3ef30ac3e70fd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230409/TensorFlowLiteCMetal.xcframework.zip", checksum: "fb27b4f23981c7fefee463c2885d7be9786c294dbab095bf6f10d9120cf8a2df"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
