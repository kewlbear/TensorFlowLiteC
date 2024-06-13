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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240612/TensorFlowLiteC.xcframework.zip", checksum: "545cb40c905f679b1f4d35c6e8628f44844f8abca8a39324dc58a738cf8bae1c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240612/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8fd60154c94babc20b2fb96619062fc8b028ca050fa922cb3b8da110902c2f4f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240612/TensorFlowLiteCMetal.xcframework.zip", checksum: "725d0a09f80cb1519575f5ab2531f48d6d285624d4f0c1c6b54d93d800448aec"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
