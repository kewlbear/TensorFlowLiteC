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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241104/TensorFlowLiteC.xcframework.zip", checksum: "a661ee80e60e3afc5471424e9bf206f6cba43cdc232a99f55287788ec4a3fd71"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241104/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9ef76f17ead9e30e9415ca3193ba52190aa392efe31046fecf7e6e87246c4093"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241104/TensorFlowLiteCMetal.xcframework.zip", checksum: "072008f2a1ba43581905be8bdc856b0dbc82cf76a37bec45c914b572970bcb25"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
