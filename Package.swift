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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240905/TensorFlowLiteC.xcframework.zip", checksum: "1607f7d675d5ffa5e2f52453b085ff92a8997994d48dfa24864167611b53e7a0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240905/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d2bd986a4e2f1829a6787e780c3587d16100c36d448a2e91e47011e01349733b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240905/TensorFlowLiteCMetal.xcframework.zip", checksum: "456d1208170735febc0bb7e3a8c61e7a4e6df7741c22d70e50bffb2d427a8944"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
