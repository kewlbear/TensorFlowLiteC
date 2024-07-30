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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240729/TensorFlowLiteC.xcframework.zip", checksum: "a52d4302a7a03fc8e1a41421546d0e638d5d0b8aa8bc3601b898bd9cad04db11"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240729/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4a367c8afff7b15f97c83bfb6e71d4673ceaaea6fded325c877a7ae7ffc386a9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240729/TensorFlowLiteCMetal.xcframework.zip", checksum: "ee6102b60d62f1d9dd39bbcbdd24166129e989097573dc364e2e573876db7fe1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
