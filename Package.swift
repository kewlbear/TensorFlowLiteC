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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240331/TensorFlowLiteC.xcframework.zip", checksum: "57fee44527bb3238c2ad692b5c8a265be92e9132da1555a5a9051ef5c7f660d3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240331/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4b164f66565195a88b4f651beda890fa5931829b7a6d72b7d2d8a7586df1161d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240331/TensorFlowLiteCMetal.xcframework.zip", checksum: "49b08bbf64e708b8922cf6f95c16ef54cbbed92ffe53dfbd1ebeea733ddb370c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
