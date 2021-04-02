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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210401/TensorFlowLiteC.xcframework.zip", checksum: "7adcb2f6c1471db7bdf3f425f3c17576c6004321a12ce0c3a5664345d2771099"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210401/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3ccb358f8cb31e1c59e15ee1ce3d4541c35c8e05812338f5d89d268d610ff991"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210401/TensorFlowLiteCMetal.xcframework.zip", checksum: "006f01c2048be0bec8f8db7cfb7c3e504283f722755f41a240ec25e7ccec421a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
