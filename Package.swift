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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210326/TensorFlowLiteC.xcframework.zip", checksum: "d99fa612bc77e7bee54dce71cf27e5f50f601c6b318c6e3e1c0a0303a3cf1a9f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210326/TensorFlowLiteCCoreML.xcframework.zip", checksum: "121142ba2c06a8e9b7c71e54bd79372889fa567c65f7e26e6fa11256f240563a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210326/TensorFlowLiteCMetal.xcframework.zip", checksum: "28f047896c0246ee8aeaf3c0cd6b3b95f8f7f06a466d5d8a55b914b0976e5855"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
