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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241021/TensorFlowLiteC.xcframework.zip", checksum: "c4a701f02b3e77dc379427599d4c2ac29a1e63b1855609335f9856aae8df46cb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241021/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c5629b0c816ed553b1cfb2122b6b9abf42d48309a8be948fcb89be5e4a9855f4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241021/TensorFlowLiteCMetal.xcframework.zip", checksum: "8e316b07f11bf0d6486d456ec100e01a8703b7a072f38ad3402225a7c0be00c4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
