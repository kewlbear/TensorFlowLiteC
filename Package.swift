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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230725/TensorFlowLiteC.xcframework.zip", checksum: "8021381e730da54fd2412144bfffb94f314f3b32ae0f833a2afcc2b056b4e6ad"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230725/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5274fa3b62fda9df9f999a000b67c4285ae9102b37eb6d47db3cfa4859ffc36e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230725/TensorFlowLiteCMetal.xcframework.zip", checksum: "a0ec691f5dca168ea1290970f470a3e50e777a6d126df6d6c4d69c479ce032ef"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
