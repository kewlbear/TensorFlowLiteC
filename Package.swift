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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230823/TensorFlowLiteC.xcframework.zip", checksum: "9f00f23d74a60c7bbeebedf3eb04d553b5752bf5b6393d11e6aef4ae47c6d8bd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230823/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6ddfe3ad9cfea1bc17102458def6f696abd286ff32a9b8ccf1f918a73e9c620a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230823/TensorFlowLiteCMetal.xcframework.zip", checksum: "f4f8a524236358008d8f1db102785b6f09136aa2bf5f4c146878a37ff34ed0e7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
