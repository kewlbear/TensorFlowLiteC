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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240926/TensorFlowLiteC.xcframework.zip", checksum: "143432b6aece7db8555b944b1041872b0d0145227898ac21333e1c0480164b42"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240926/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ea4022ed017dd83223621a1c6bfd500a00094d08202af2f936a11378008830c9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240926/TensorFlowLiteCMetal.xcframework.zip", checksum: "a98d67b8df6a577d41642f819a84c697821dff404234dcbb9bb2fa8611856702"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
