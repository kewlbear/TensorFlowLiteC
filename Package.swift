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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230903/TensorFlowLiteC.xcframework.zip", checksum: "f9723235786cf33e8591aac87ef12f79f5a6def52605bf694c2afd9276f1770c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230903/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f2a51e537978345f77bfd4ea9b174399a2817108ef130ee1ab3322dec204cb95"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230903/TensorFlowLiteCMetal.xcframework.zip", checksum: "ceef294426b88c07e43dfedfe31bbbacd82a1de05a9f71fd6d7e69ffe928fd28"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
