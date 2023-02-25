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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230224/TensorFlowLiteC.xcframework.zip", checksum: "13634054d3fb6f3907cf5870d9dd38832e0f33c510b5c0d049d7c5cdde55b9a0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230224/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bf6f4c49a0e5eda74e921db96960b5da9009b274201c0f6246c75f7d30252bc7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230224/TensorFlowLiteCMetal.xcframework.zip", checksum: "a3f7b0c8846d0991d19b2e780704c9ed8341030181cf107b213706206a3a78c4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
