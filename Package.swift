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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240511/TensorFlowLiteC.xcframework.zip", checksum: "71e6048d1590e73f09439841e9558aee7be072c6fd58ad4c377699902393fa11"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240511/TensorFlowLiteCCoreML.xcframework.zip", checksum: "289bfc32380d83a7b89a6ef045c5d244388a3264e33ad2aa0d43a016270244b4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240511/TensorFlowLiteCMetal.xcframework.zip", checksum: "c7216f28215ff011fb90ff2e74ccd7eae5e6d4c64f836ddf7a6fd7653c6861cd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
