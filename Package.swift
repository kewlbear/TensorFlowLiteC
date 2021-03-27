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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.4.0/TensorFlowLiteC.xcframework.zip", checksum: "23be6b343ac7ef82d0d579d090b8783e7625248d73f79e3ae1b45ba789ab0f8b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.4.0/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2e651a0c2097a4ff94bc22be3b947003dc578e72b4f7afcea00d4b428c6e9ab9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.4.0/TensorFlowLiteCMetal.xcframework.zip", checksum: "fd33db256fe032d8e300f0a84c778cf1d574ab364e1bd5edf8411a3a610012d3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
