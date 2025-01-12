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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250111/TensorFlowLiteC.xcframework.zip", checksum: "53a8487c5b2632df50e3b7bc3c119b6a7702e0bb63a570f7878c7b94205a6be5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250111/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4bf3ba913e073169094456b2fd97070ddadc1cccf718f799431c5023ba6ce138"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250111/TensorFlowLiteCMetal.xcframework.zip", checksum: "a3c35a348c479de2623ccfd6ed664621e25d29aa5b3ba57bad236e4f58d31e72"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
