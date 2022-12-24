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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221223/TensorFlowLiteC.xcframework.zip", checksum: "35c7f4af8696c58116755eec3f5dc1936bbaa5c9b2012a3982252b5cb4119407"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221223/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f1b6f98013191d1b7bb799268ba96b4f09274750fc487562f412410acf6656b4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221223/TensorFlowLiteCMetal.xcframework.zip", checksum: "609b57032051f576cf316b42bbaad7d353a2c6591be326c6a75695d05b11ccf5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
