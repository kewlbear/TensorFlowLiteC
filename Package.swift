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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240829/TensorFlowLiteC.xcframework.zip", checksum: "9c3c2d4ecbd3022f7fd23038e20db670f5f6577cf3c5f9e10baa95a6b46aa3de"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240829/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0f3ae64d035c67ee6ccef09100be9cb57ff767a65f578f57a0d62ce6b38693e2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240829/TensorFlowLiteCMetal.xcframework.zip", checksum: "04d518db4904cf843a6af121fb6a545c221c2de7a8a961799095f35ac94b5040"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
