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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240613/TensorFlowLiteC.xcframework.zip", checksum: "cc64cac14a904563a8035827200e7123746effa0f047a1c49053c699fea1f57d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240613/TensorFlowLiteCCoreML.xcframework.zip", checksum: "33b526f523584e8ad03014cd83e213898caa52af296d31df0817a321c1ff26f6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240613/TensorFlowLiteCMetal.xcframework.zip", checksum: "8c7a9fa6b0241315dc37316d7567e2758029fc16c31bd1f29dabfef68bdd24e7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
