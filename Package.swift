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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211108/TensorFlowLiteC.xcframework.zip", checksum: "e47b7641f08db958b224840ea7c981a14fc81ffce7f5db479bfd7a20008c68f4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211108/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ffbe2154183bf4a1e566ee5483fdb15f1dabb0a52ec1ea195509b6a8b357a95b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211108/TensorFlowLiteCMetal.xcframework.zip", checksum: "176f027d796be82be204716a05f8c0cda12cb16935eb99760660f711a5db8b49"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
