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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230519/TensorFlowLiteC.xcframework.zip", checksum: "93553c676bee59dc15a2f347a58d70cc22b848b03cbbacc28bde72f072140851"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230519/TensorFlowLiteCCoreML.xcframework.zip", checksum: "92a5c4c33b8a59f26725d4c072d45e7526c90337d944e95dcbcf2561265d0546"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230519/TensorFlowLiteCMetal.xcframework.zip", checksum: "c965a0462906818c3edde67e94426754394cda5b3401dfea59daa2b7ae3a7bce"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
