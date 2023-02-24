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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230223/TensorFlowLiteC.xcframework.zip", checksum: "8b4b4213c731829097617e910dd7810845a408a7f0f90ae38eaebad23619674a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230223/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d022d2e6ccebba29484d4ebb0e713aad6e704131191e5fb486f603fa7c12f86b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230223/TensorFlowLiteCMetal.xcframework.zip", checksum: "04b9dadccf3e67a75373e3827302ee7ccebba9c07a2fff8c477163c57bf0dea0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
