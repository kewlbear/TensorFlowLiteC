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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240229/TensorFlowLiteC.xcframework.zip", checksum: "257aaa1b16df941f3e67bbbb49f0a7df50dcb1fee6bd18bc984a5b8c9c2c6b26"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240229/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ce56d3e14ee2fc37ce269d35fa819e131310f2efc7d5b4d93222bc6fbeb60fac"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240229/TensorFlowLiteCMetal.xcframework.zip", checksum: "86336f5750b19cc08439fc0526eb218b57326f0970e9da505d848e0096462b54"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
