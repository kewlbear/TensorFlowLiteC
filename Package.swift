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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221203/TensorFlowLiteC.xcframework.zip", checksum: "a21c5b7d584ea465b411519b18c0844d62d64ae30c44cdfcd3bc9f73f8fe8357"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221203/TensorFlowLiteCCoreML.xcframework.zip", checksum: "db9f27378c6769184da06c8aa8c339f00b27a66e0737fb7c1f170f52f3c6e358"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221203/TensorFlowLiteCMetal.xcframework.zip", checksum: "83ad065b2830a1b84ef4d8610d2d920e190a9450c45376631c68d5d0928825af"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
