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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231017/TensorFlowLiteC.xcframework.zip", checksum: "7835225ed579d7b042f978adc65472228c654a577fb7c041b4c043493a9b0ea8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231017/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4c79d260e0b6aa892ea11824f2c79980ad4d70177903587ebe298bc404e8beaf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231017/TensorFlowLiteCMetal.xcframework.zip", checksum: "6c248611f0a6d149946a88468900f1256aa35c0f48252a28bcc567a4760d132e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
