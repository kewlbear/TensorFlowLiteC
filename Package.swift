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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230303/TensorFlowLiteC.xcframework.zip", checksum: "105a9eeb4a94df2aa9bd9e7b5b9746a3acf89adf7ca725cfee4e1d2b3dbf63b5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230303/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6e0b670117fe7cc6242f07c5d5203b795b905c8fdaa41413430833f81c6cd7ab"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230303/TensorFlowLiteCMetal.xcframework.zip", checksum: "d8767235d580c865e18f11271fb94d0bd52eebd0005acbe9eb27f8d6a6f26db6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
