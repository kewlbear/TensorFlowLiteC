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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240301/TensorFlowLiteC.xcframework.zip", checksum: "84d5531c7600b54a29473b6bd16d871c6c4dcc18a09bd5cda121d027adbb072e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240301/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e441a4bc19f80fbd8349c76d60b096295ec646b2dad0c48b667de01246f091e2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240301/TensorFlowLiteCMetal.xcframework.zip", checksum: "841edaa0fb881b77e770943add16e4318d1af89794ff058fdb037d1d2c8b2b50"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
