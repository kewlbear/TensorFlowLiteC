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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241208/TensorFlowLiteC.xcframework.zip", checksum: "7f146154fff926842dd50f3fb1e44114558363d4b75cfe3e2071a4852b90e859"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241208/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1c44a4979f022514eadce26c0be50bc7f31735304b5936a6db35fa7345e77327"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241208/TensorFlowLiteCMetal.xcframework.zip", checksum: "357d16b30e2287e892802aa47d31c76554371d1cbd2ccc08b1bff03ec2f563b8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
