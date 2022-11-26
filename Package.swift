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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221125/TensorFlowLiteC.xcframework.zip", checksum: "43a8e864dad97cac5c9bf1c200cd5ea8717efe599afc9764f720fadb27fde200"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221125/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cff5b60c7d4c6214e6f5c628eb19794f121d8b899a209958cb49e1afae596177"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221125/TensorFlowLiteCMetal.xcframework.zip", checksum: "2570ca2e097cc9f1ed5e4834efc01ba509e2f9ca825bf9cdf0f22e39a0433c2c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
