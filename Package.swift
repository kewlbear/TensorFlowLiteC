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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250109/TensorFlowLiteC.xcframework.zip", checksum: "c0447b690d9fc7de5bb117580b4d2c4e2a6fdabec49b97a187c37859ee080ea0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250109/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c72f3d4000fd9ec1efbfa4765b1352eb4fb5f6ab8bf14890e17328692e660bd9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250109/TensorFlowLiteCMetal.xcframework.zip", checksum: "805f714a443f0024d225ea40a1298b734f8a8330c67c9854da969787ff46232e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
