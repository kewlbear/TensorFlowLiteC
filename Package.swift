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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240606/TensorFlowLiteC.xcframework.zip", checksum: "8db7c5832fbca31e3fa4074227f89111951c0d891919986cfa90002b656d8b61"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240606/TensorFlowLiteCCoreML.xcframework.zip", checksum: "18e3cf854b06010a29b3feb986bacbe200e6a6957f4ec62810bf31758f11a9e2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240606/TensorFlowLiteCMetal.xcframework.zip", checksum: "007d5249f4c5bcfefde79bef41e21b2f4c6acc287333cb61e83b2f4ffe2c1fe2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
