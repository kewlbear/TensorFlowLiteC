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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230930/TensorFlowLiteC.xcframework.zip", checksum: "c78a495ac49f1864187572a97d3c641258ec8f7a43ccb3052d37addc4b5169f5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230930/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2dc51d95a9ac7f0d767260d10e939602919c4ea05330a557843d0a82bfa74e8d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230930/TensorFlowLiteCMetal.xcframework.zip", checksum: "1ecaaa01ea5cfc52a5ff33b191fe6a1500d2285b11a460799d82b3255a816f7a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
