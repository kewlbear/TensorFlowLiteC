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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230616/TensorFlowLiteC.xcframework.zip", checksum: "0c351b39d6767d1638c6361b3afcea0b247e4eccab662666a862862079e6dc5e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230616/TensorFlowLiteCCoreML.xcframework.zip", checksum: "87a1efb2d0320752d1c4b08b7554064f9d580740e83dc23808685125013a521c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230616/TensorFlowLiteCMetal.xcframework.zip", checksum: "ad684a8e1e8df61f09d1e71c0c0c8c5d61fd406547215ea5f2f6827d945579b6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
