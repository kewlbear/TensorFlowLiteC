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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210915/TensorFlowLiteC.xcframework.zip", checksum: "b029b538f8103a2e6bbf13e3de19ce4d7ee6e176a2809c61a25d2a1513908ff5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210915/TensorFlowLiteCCoreML.xcframework.zip", checksum: "583283a6893ae7ef07c4639f3f681d85c729ccd8bce2ad2bb2e48514d70f355c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210915/TensorFlowLiteCMetal.xcframework.zip", checksum: "d718393865a4d6a5e7c12c200cd2867021fa109de19528b5d2b638011d3e2f98"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
