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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230425/TensorFlowLiteC.xcframework.zip", checksum: "11f8bd797c0a63220b0f0af9a58f3e4aa6ab7d13cd2f86a9b80c7090e7dcba72"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230425/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fb1f4b3c6028054c92c507f4f766a2461de5ebecc3b67e860ce6dba317705c4a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230425/TensorFlowLiteCMetal.xcframework.zip", checksum: "a3ded7dc4507cb1fb4e6cd39c75681fd0406bd39029c41f0458f7d8fd8cc0250"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
