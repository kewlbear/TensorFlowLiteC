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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241207/TensorFlowLiteC.xcframework.zip", checksum: "5a80652b32f77916849d7a169481565367f081157524dcf4fb3b20b667e86911"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241207/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5420741b8b89707b8138af19d60ed2835af8de348783a7e0caa393cdf04e138e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241207/TensorFlowLiteCMetal.xcframework.zip", checksum: "3ef9613a5864e74013fd44792c0ad3885ab3bc0f44ebe382b644c987af1d227b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
