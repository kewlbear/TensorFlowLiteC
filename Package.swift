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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210731/TensorFlowLiteC.xcframework.zip", checksum: "ca9ad291df0c6b6eb4610bf992fee346aec12e9d8df11aa0a4497d1b8c4c5674"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210731/TensorFlowLiteCCoreML.xcframework.zip", checksum: "67f66e2dd8164d2adef5a2b71d41bf3a6ffd863270f4e7cc638a9619450a962b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210731/TensorFlowLiteCMetal.xcframework.zip", checksum: "48adf3409a2b7205886e214a313b9d8b070285f99d9020f2f8ed61012c8ffe58"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
