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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230521/TensorFlowLiteC.xcframework.zip", checksum: "534b3694a0b07d9958238e5ffed7c3015a5d0d96d1342c08a751e56b2c6970c5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230521/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7e2d52bcd3eb3f134c434b3912d7c5fa16a9f10cbee92ecaca9617f7decc4439"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230521/TensorFlowLiteCMetal.xcframework.zip", checksum: "d7d65631fce67fea623dd8c3542b4159b54895114d456cb266169c3a49c013a6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
