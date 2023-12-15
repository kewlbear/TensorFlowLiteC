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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231214/TensorFlowLiteC.xcframework.zip", checksum: "0d2475f836d9d79609ace3505f7218a7c06786eee5282326f6b746e277755163"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231214/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0110b99d568338727cfb4819939e463baff54ad9d355786c5ef96f6c22e2ffa8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231214/TensorFlowLiteCMetal.xcframework.zip", checksum: "ae8764f870cd9d94f99445968210151a6c1e07f8e2f9d75872d63cdfa01d7240"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
