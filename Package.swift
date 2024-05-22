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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240521/TensorFlowLiteC.xcframework.zip", checksum: "7c80cf46edebbd8d43d0ed52978439927efd14753d2897705f1f0d3bf3c22d2d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240521/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e9e168053063d4904013132f15cdd0fa87bdf97025c6492bce3c673fef39e090"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240521/TensorFlowLiteCMetal.xcframework.zip", checksum: "85e198b53f5741f28a048b29834fc7941ca121c21aa618c9c63e9ca9bc83e65f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
