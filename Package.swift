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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240504/TensorFlowLiteC.xcframework.zip", checksum: "1935d4f211656037b5b86683523203a5669f238e911a6ee07d5311080c99f2da"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240504/TensorFlowLiteCCoreML.xcframework.zip", checksum: "937f8d5398d052aaac4fa0d2026d93e022d9d431992bf85729e5d1250845546d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240504/TensorFlowLiteCMetal.xcframework.zip", checksum: "c00ab64e4bb6a6a45478b4171b1b22e042460d3c296039ca753b43a706c2b965"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
