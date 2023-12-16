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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231215/TensorFlowLiteC.xcframework.zip", checksum: "8a85fe6064579de58618c5decf86a4dc2964d7f541687e4e8f4efb1f09e529b5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231215/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8517c27a306a07918170cbc8f6090b36a21e35fb931d5d280f57d05362f0d500"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231215/TensorFlowLiteCMetal.xcframework.zip", checksum: "33e511c7ca535778a3ce0e0fbb81203f77c7dcfe35294dc909fe96b11e449af1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
