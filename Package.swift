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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250307/TensorFlowLiteC.xcframework.zip", checksum: "d8b735723ed60b85d5c148ea3b4f39beccfaf13ccbc62004f1a4ebacfd31c1a9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250307/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a4621922f8704120307ddfc0816052995885d57887541112aefd288c217e2e28"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250307/TensorFlowLiteCMetal.xcframework.zip", checksum: "14e6c5bc7a84e774b6ab98a1423208136d84518e3e1183f33e4fe4fc8b83964a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
