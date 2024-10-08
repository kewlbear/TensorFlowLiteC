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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241007/TensorFlowLiteC.xcframework.zip", checksum: "85847fffb400168f3e04ebc5d1270659eb2ac51362e360564c15a768a041001a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241007/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f1b7d3a1c681f7780be72872b8675a7d9ed0066ce052e129d6492c7b6bbb7282"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241007/TensorFlowLiteCMetal.xcframework.zip", checksum: "82cd0efb3e4b71b2c4216f4cb604db9214dd6c6d5636f0a0e55df5ff675f5613"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
