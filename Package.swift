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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250112/TensorFlowLiteC.xcframework.zip", checksum: "a1a6342a59bfbc80f6fa8c886450de51e6442f5f14b2f6b4b7d18e4e9a8a4d07"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250112/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1a5ac0a8cb7d4533b6d395540849f0a460eb7fa4f2c62e142528b783e808998b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250112/TensorFlowLiteCMetal.xcframework.zip", checksum: "b429fec73aaff8f9fb76eb5e0a66fba6af69532d9bc27ea4b94ef8570a2ee8a7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
