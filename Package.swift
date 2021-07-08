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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210707/TensorFlowLiteC.xcframework.zip", checksum: "0fb63061cce474be09d0082eab49d05f8cc566ce3474bf0563f2a105592fb544"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210707/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5ef86a79161809b883f293ca9e02032a95823d4969089f25cdc193424e205c6f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210707/TensorFlowLiteCMetal.xcframework.zip", checksum: "7baa68d5520f0f8c49bf31a7d3a95deeb1d4607584775e4ef0d4a66b20be3d08"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
