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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211128/TensorFlowLiteC.xcframework.zip", checksum: "be9bd9004d30afd6bedb114343f4d2ddcbd5e1f0dca5996b1ad6a831d8c63bce"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211128/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5d64c79fb9432475e31c29417ab3da6c8aaf1a92e13d2aabf90ca9fb1ddc4bf9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211128/TensorFlowLiteCMetal.xcframework.zip", checksum: "84bf7453f9dc412cf9a99aa7f50cc17fda37b801dc4937ad102f8af8c8d2e547"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
