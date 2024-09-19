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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240918/TensorFlowLiteC.xcframework.zip", checksum: "945284d0924cee2cf75128b043a44a9864f2fe75d36888126947e39c497ffba4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240918/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fd701cd8e15b2966335b5170a952edd1c70457d1eeeb3cd47eb67a4155f240c8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240918/TensorFlowLiteCMetal.xcframework.zip", checksum: "a1650146ebe86c0a7b5a201d0ba3880964e65e52359648e226fe918716721669"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
