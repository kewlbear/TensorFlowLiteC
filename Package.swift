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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240815/TensorFlowLiteC.xcframework.zip", checksum: "f6393a75d4c28ab5f0aa9938d5912ce3da9951ed91f30bc16086d8cb15ee5fa2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240815/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c9bd474bb9b2032179be75838dc45fa2f760dc97bf9e8663ff2fb575ffc77a81"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240815/TensorFlowLiteCMetal.xcframework.zip", checksum: "b654e61ff664875ee5bd705a9f9b3a270ac2a85cb0092f9963c48001e9e45f8f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
