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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231227/TensorFlowLiteC.xcframework.zip", checksum: "bef5e65f8fac487e6a6d2c8a65cac7fa5ac433188b96ba8d3315ef6e7c8e7819"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231227/TensorFlowLiteCCoreML.xcframework.zip", checksum: "14ac7d399ad875c7e88bfd9329a6eb5d6d5b64d5d9e4272c388a8b3a711dbeb7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231227/TensorFlowLiteCMetal.xcframework.zip", checksum: "62221031b69e35cddb95454ab51b9817e0ea41e3029e3e41e7c8766b5db04d15"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
