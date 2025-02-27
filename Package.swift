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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250226/TensorFlowLiteC.xcframework.zip", checksum: "5d7bf112bc3c48c46a66d8e8e3610c6b0c20a35190479126082bb6e304a7ed11"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250226/TensorFlowLiteCCoreML.xcframework.zip", checksum: "acebb781faf39a2e42e17832264e3c589aa78795dc4b39b7853f692987cb3427"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250226/TensorFlowLiteCMetal.xcframework.zip", checksum: "86b2447b7676d61d88c73ea9095195c9cfc018cc453765cfbfe5e174095e33e6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
