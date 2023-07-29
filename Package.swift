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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230728/TensorFlowLiteC.xcframework.zip", checksum: "96a4577d5e25a5c6880d96818b9c766211d6c1652d373ef46e93afd9d1d4dc15"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230728/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b468dafced9f25c759cfdea56cc869bcbb8761e07eb554d42743421408f6ac2c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230728/TensorFlowLiteCMetal.xcframework.zip", checksum: "6c25bb42688310bdbdebb47045d9d66fc87f4d479ba3f2897babe6e93f44f650"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
