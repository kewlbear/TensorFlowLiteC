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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221015/TensorFlowLiteC.xcframework.zip", checksum: "5114ae6e6d2f9c9816e963d142d9bceab04c9412c0e3792f9044c1f09b879143"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221015/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1c91dddc824c5c7d0b9f4453982c7e8e9fb70954953614c117663f98a55fb15e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221015/TensorFlowLiteCMetal.xcframework.zip", checksum: "357fd35cc426e792434b10e4f997f1260ccc58fdd1073412305ccc88e4f4c3c5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
