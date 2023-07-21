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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230720/TensorFlowLiteC.xcframework.zip", checksum: "f32234bc985dd0e7bd7e4e633de248618831f6bcdbbf0d696c2c82cf045b5b95"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230720/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c37a83a5150e7d5ec5902e1631edd0d62f0180f8328dff5e40b5b511ff3a4198"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230720/TensorFlowLiteCMetal.xcframework.zip", checksum: "7a5fd3144ec3d111fb27f765635ed1d463f7fe7db7e7a17c4064dc2d01133965"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
