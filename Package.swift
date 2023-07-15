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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230714/TensorFlowLiteC.xcframework.zip", checksum: "976e3014813e4f94581ca845abf7185c9a35c8a54a81d6adfae97b85e95ef996"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230714/TensorFlowLiteCCoreML.xcframework.zip", checksum: "25ca5dde9a82e5824a7d264459351a0b53dc724995b7561a1382bf44a50f8e19"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230714/TensorFlowLiteCMetal.xcframework.zip", checksum: "0308dfb297880720b8a6a60005c56512e3619b30b39d79298bc3cbf34ed0af94"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
