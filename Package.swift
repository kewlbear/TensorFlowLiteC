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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241117/TensorFlowLiteC.xcframework.zip", checksum: "a698f11e1b0d57374103087a5ce4e43304064d863cadd530ff018c449b0978ff"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241117/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f14367a8bad90eaac7b0a14b14390bdf7e87fd5b4c372369c0b28f5606fa4dee"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241117/TensorFlowLiteCMetal.xcframework.zip", checksum: "dbde1855c912fd828a4e29cab03b036128676df7db08aaeac50ad2eb5ab7eda0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
