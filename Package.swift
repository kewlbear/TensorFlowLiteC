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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210418/TensorFlowLiteC.xcframework.zip", checksum: "eb650d19f600f35a8ba2604779a7aa0eeab3c79e4ede4672e044e54f94817540"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210418/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7a4333db4e2f232e1d059dd32f81bb5d7d842ccd97141a84dc8f05b3401d6964"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210418/TensorFlowLiteCMetal.xcframework.zip", checksum: "8f2479afd613b69cc9b028979945dc4d3e08249d490b04b0af92a1b5c0011382"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
