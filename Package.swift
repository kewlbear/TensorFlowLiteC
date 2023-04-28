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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230427/TensorFlowLiteC.xcframework.zip", checksum: "70df3c7291019b1f4801cc8a6c694bf07df2b7c3ef86af8a353b2050036bfb94"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230427/TensorFlowLiteCCoreML.xcframework.zip", checksum: "705d86641d0b9e9e43059570c63531f62033eef0a101f657273351f75cac5f3e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230427/TensorFlowLiteCMetal.xcframework.zip", checksum: "29c79cba720971bdd2e103a9fb7a9035650ca73737bbb2430b8b5580ce14880c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
