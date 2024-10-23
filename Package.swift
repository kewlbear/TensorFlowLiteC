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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241022/TensorFlowLiteC.xcframework.zip", checksum: "03f916f4e7bcbffd6a1eb37f50241a1dd9bd632ee7a5a999f9b35991d37f4ddb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241022/TensorFlowLiteCCoreML.xcframework.zip", checksum: "256d022a3749381483c0a50350b27789aff02efa84cb8ed60758e0fa06c2cafb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241022/TensorFlowLiteCMetal.xcframework.zip", checksum: "6e9810fe7ecbcc16866286f28c892d74b522f301c53e858299e3e7348c9fe429"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
