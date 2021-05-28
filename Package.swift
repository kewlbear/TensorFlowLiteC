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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210527/TensorFlowLiteC.xcframework.zip", checksum: "e69a01d1831290e589088be7f5ce1f76056dcc57bf94ca755093be8277ec61f7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210527/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e2b0e8d20f353dc48ffc98a517ef7f7fbbc0b3df39fc83b0a22341b3ea4dfc99"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210527/TensorFlowLiteCMetal.xcframework.zip", checksum: "278f60a4991ebcc63f106997d2911d2725c3558b69c18f2a00f3856a5a21b684"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
