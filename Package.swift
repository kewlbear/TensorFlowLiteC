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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250329/TensorFlowLiteC.xcframework.zip", checksum: "dcbf8b9e7d51dd69e55ef4bf270c0232435b34068fb19b82de978da2736fc478"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250329/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8c0278a1f360351d80c31dedc9c7b2fce5502f40717336702bb19fe0c74719e2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250329/TensorFlowLiteCMetal.xcframework.zip", checksum: "aa47bd26cb4ad10fe6a8bb0a998ce7000114d529744502bbe28aa69d980f11d5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
