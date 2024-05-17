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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240516/TensorFlowLiteC.xcframework.zip", checksum: "3955b860c04e3e40532fd6f57837a0927edf9c5851882d36bf20699eee9ec31b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240516/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b88c4b015371be9db7068e499d04978697b0cb4c9bfbe56a7b26f599fc1cb0d8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240516/TensorFlowLiteCMetal.xcframework.zip", checksum: "f37c7f36f81eff772fbae153d547d230446800c40dda3ce77c62cf49d9558d26"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
