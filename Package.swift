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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210429/TensorFlowLiteC.xcframework.zip", checksum: "797539d98c179962e8b59fa6f7d4851fd5f11167ef9e13fb2e792c0ec240b3e4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210429/TensorFlowLiteCCoreML.xcframework.zip", checksum: "14f017accc3ffd19f0c8e41ae67c47bf150de1b24fb031cb8da66f9b16a2b05f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210429/TensorFlowLiteCMetal.xcframework.zip", checksum: "78253b8ff67118b0b03882c4869af9574f07743e5fd44b86646d2d998e644b0c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
