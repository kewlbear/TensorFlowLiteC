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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240227/TensorFlowLiteC.xcframework.zip", checksum: "8b286bef65b2067eccb0d5431ce94fc227e5214285267d83c4cbc9888a0cf264"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240227/TensorFlowLiteCCoreML.xcframework.zip", checksum: "185bfa9328f8f45ffea907aa3347635f2cf29a91a7ac19a0d7453d0cdc6e3630"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240227/TensorFlowLiteCMetal.xcframework.zip", checksum: "5f20208bd25d052a204160885edcc96a6b8a581c8c8cb2e1def8a33f81e01aed"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
