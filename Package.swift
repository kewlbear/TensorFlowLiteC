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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250205/TensorFlowLiteC.xcframework.zip", checksum: "3ebcaed1966e7d93559aae770c71efdf207072a7d9e2964c551097fb6a0a823f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250205/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b5e0e2dc722afc26c15f58b325d706d3d1e12142ab96f11bced086e938574d0f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250205/TensorFlowLiteCMetal.xcframework.zip", checksum: "6dfb62be01ab005b2d537f4635d78618adc9cc9d42429809388e66cc863bef07"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
