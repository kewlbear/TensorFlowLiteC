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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210928/TensorFlowLiteC.xcframework.zip", checksum: "01ad36a30a0e1474bbf24954e3f4c968f557c4e097e0b7769929a707ff258e97"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210928/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d1ef1816c92213b63de6077faec921c83020c117c616a70bb16ae38cb9bf6abc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210928/TensorFlowLiteCMetal.xcframework.zip", checksum: "493873fcf3268c8164e2218b5f6f45d5c73b13adc07da41bfe41b6840798a5aa"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
