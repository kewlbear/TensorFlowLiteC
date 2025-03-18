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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250317/TensorFlowLiteC.xcframework.zip", checksum: "0b5822b76b143c23850e8b244d43bd597f2b8564a08dff6d4d3391996b380eef"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250317/TensorFlowLiteCCoreML.xcframework.zip", checksum: "687f5c5a424135894e419367699ee5160aaf545580a9bb3a56bac00838aa6c7b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250317/TensorFlowLiteCMetal.xcframework.zip", checksum: "232dfc70fdd26b723be1c6e50a0e16510fbc2385b88fdd731cd89f68cceef675"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
