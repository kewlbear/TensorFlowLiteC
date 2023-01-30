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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230129/TensorFlowLiteC.xcframework.zip", checksum: "db1ac231d7f4ff5f9a6a1ac9c7d73f0a09c32f59592bd4bcbdd1e397b8e5ceba"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230129/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3f7f67ad4c897d01dccf7f24e9a61d0d06d9255fa6822a11d00da6ac71320356"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230129/TensorFlowLiteCMetal.xcframework.zip", checksum: "a035e3367e78bb56b49df59269b0a67d1e53b64d1d24e5b1bb1e1fe4c5551d5d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
