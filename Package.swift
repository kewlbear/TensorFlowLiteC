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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240603/TensorFlowLiteC.xcframework.zip", checksum: "14e7a6f4a2a8b9cf3d86a92070cb4708d885637c63e820ff57e989d5a5fb6286"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240603/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3e1f3539a0ab750c0e1d9ed453fca2ec2721de949221ffbb52f77046aca3e93b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240603/TensorFlowLiteCMetal.xcframework.zip", checksum: "041f20ecf70116f6416b78b95b1d1446df5a88896a7fb0b63f6aa7fe5d9fd391"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
