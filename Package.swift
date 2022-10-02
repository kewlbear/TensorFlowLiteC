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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221001/TensorFlowLiteC.xcframework.zip", checksum: "04af49a696f55e38797c6817acf02e8c2f289fdbaf3008193b29cdf12281bf39"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221001/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a64a9412b79df9c3e1866117c6f267c8c1e5de17c3f9342773ea6f73bf92f626"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221001/TensorFlowLiteCMetal.xcframework.zip", checksum: "6d3b2bc933f88eb5a5f9bc709ba5f5f0b755e257a6df29aeb3c150d174133ae5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
