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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230528/TensorFlowLiteC.xcframework.zip", checksum: "af4700b1a2b2c3ba912e7466a3dedd33b26d059fbf746e1e285e68faad37212f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230528/TensorFlowLiteCCoreML.xcframework.zip", checksum: "90f69e2ef5bb88337832d8c8bb6d83e157c262a590524cc1f06416c64adacccb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230528/TensorFlowLiteCMetal.xcframework.zip", checksum: "2aa318f510be898ff2f7b5fc39303d3c47898cdc16d0b3bef0b4bf50ab4b9f9a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
