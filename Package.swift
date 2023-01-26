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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230125/TensorFlowLiteC.xcframework.zip", checksum: "dab301d53dcd031ddf1dd8fa5455e537778a2dcba200d4b50fd56ac329c2db17"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230125/TensorFlowLiteCCoreML.xcframework.zip", checksum: "949039ac45787f60884e81abb2c63a5d63002cbe9f5cd9992018aa142eca3b8c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230125/TensorFlowLiteCMetal.xcframework.zip", checksum: "a54f81787161eda54a8319d7faf8d9042a66545c6f88995556b2faea926f07aa"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
