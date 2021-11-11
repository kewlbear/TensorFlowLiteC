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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211110/TensorFlowLiteC.xcframework.zip", checksum: "6a209feee038a9daa2d91a0bb69af8a084564d14b2cbe16145b82bc0c9ac6d62"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211110/TensorFlowLiteCCoreML.xcframework.zip", checksum: "24395533747f58579dc8039c92ea273ce9d7c3a2e5c8eba0a55cd97e15c6451c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211110/TensorFlowLiteCMetal.xcframework.zip", checksum: "0c5ba5124035de866ff614d6ecca29adac83132027e6f8b4b1320f912f9aef79"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
