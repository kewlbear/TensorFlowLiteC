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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250525/TensorFlowLiteC.xcframework.zip", checksum: "b558d42259d78942e9599914cc2b2bad6117da804a5dba6655d2dc603c0f38c4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250525/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2687420e3c3bb7bf72d5e46086d146cc1662ba8d651b973d8ab22d19549229eb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250525/TensorFlowLiteCMetal.xcframework.zip", checksum: "3812d682802247e5700ba7b2468740e7566592bdfcfecb4ad6a64955cbb71cef"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
