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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210519/TensorFlowLiteC.xcframework.zip", checksum: "15e0d9bac344450421b55e9b5de18142cc92fadae480eb8f2a9f2af420d9c5f8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210519/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9e1d5d2ca13f4d0ba319a0c577a370eaf09c2731edddd21ebe84da7f2bef91db"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210519/TensorFlowLiteCMetal.xcframework.zip", checksum: "081ea25d515286eb36ec42b68650e21252883d420fef78df3bb6e4403560a4f7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
