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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230516/TensorFlowLiteC.xcframework.zip", checksum: "e395d04e366595af07c9e6d34fa553036a28fb73652e4ea823718af9992d5ef5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230516/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cb59be872b32efa4596e2f88b42e5ba123bbe4397c71fd3e9949e465fb02bfaa"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230516/TensorFlowLiteCMetal.xcframework.zip", checksum: "aaf141645ac56885f5d6481d5683ff3061fea08628872be969df2d55958cd60b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
