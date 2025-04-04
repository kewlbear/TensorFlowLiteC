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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250403/TensorFlowLiteC.xcframework.zip", checksum: "a80c8132374a1def5ad7c758aa8fa5c1ae222917982304e55001c9e4274699aa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250403/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d37472a66b9a6c0d78537a0aead5b554e06781b2b3f0674738fd9fc59fc52870"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250403/TensorFlowLiteCMetal.xcframework.zip", checksum: "9c8f3cdf2698032bb54b1ab1f28828ecfc363f261b66a5b2b940c09de9804571"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
