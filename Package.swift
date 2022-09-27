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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220926/TensorFlowLiteC.xcframework.zip", checksum: "f5626ca474a64e6b633e5961299e69cc47ce2c2f47729f2df7f8b05d415421d1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220926/TensorFlowLiteCCoreML.xcframework.zip", checksum: "35b3009a5a98a83909c8489be59d7ad3acb3526ef66fa7b02fff6f61ef545cf6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220926/TensorFlowLiteCMetal.xcframework.zip", checksum: "80ae0f00877c1d89a8b18a2a2b9879c84276405bf42dafdf953da409d5750d1a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
