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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210808/TensorFlowLiteC.xcframework.zip", checksum: "3fa913c55763d1f6351d02d0e1cc20f92c35d5918a5f0e725f6627d520766426"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210808/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f5ba2684b55d232a068fb6b02c86e81f399a3f10a02ec9b339cd618ef199e573"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210808/TensorFlowLiteCMetal.xcframework.zip", checksum: "f92956d3ed36270c10ec186b8790d0c7a7ec35168c4be536afff353f5f9759d8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
