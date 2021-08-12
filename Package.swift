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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210811/TensorFlowLiteC.xcframework.zip", checksum: "327f90acc7a28cb389f450c2312970bad3d829260d4634eaac934d3c06122f86"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210811/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b9dbaed54dc53a4e6a23ecd5c2b3fdecccea11d2fa2ac265f711ba8ecff52217"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210811/TensorFlowLiteCMetal.xcframework.zip", checksum: "f2b36a2fd7627f2afe3596180d34bfe53aefe34d1ea9488dbb1e82f954a8d932"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
