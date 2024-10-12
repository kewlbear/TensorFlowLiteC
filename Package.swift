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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241011/TensorFlowLiteC.xcframework.zip", checksum: "b527417e0541be9d3b5585ff6ccfa52d0fe7ce9273c10d7913b7880432caae41"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241011/TensorFlowLiteCCoreML.xcframework.zip", checksum: "56423d853c5e8a9ffdf248879853a76a1db31c3e76107bad4f4574eb64eee246"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241011/TensorFlowLiteCMetal.xcframework.zip", checksum: "98820c5fc7dda9212ff1b21b82a6a8889b41fa76e56251022519a02b2eac8007"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
