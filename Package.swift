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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250324/TensorFlowLiteC.xcframework.zip", checksum: "f1effb107f0c9a7e7aeb364d615333233af381f06bb8efdf8963956370c65f84"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250324/TensorFlowLiteCCoreML.xcframework.zip", checksum: "058d4383ef4ed9a8ff126a193dfe418d76f28284183e98f58a678f8595d68ae4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250324/TensorFlowLiteCMetal.xcframework.zip", checksum: "4f7c45493364d329254850705e98875b78a8e45d8c37f534afbffa29ed08a3af"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
