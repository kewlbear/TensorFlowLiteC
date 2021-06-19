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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210618/TensorFlowLiteC.xcframework.zip", checksum: "1030c8476631a4099410ba2db1a29247bc6a2c8f374fd72fa679a77993ffab05"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210618/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6c82d8617f46677cbc0fd1412953072038d98957c2ab9322c92c057b1a988617"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210618/TensorFlowLiteCMetal.xcframework.zip", checksum: "40fba83eeb6d60ffa4fa6aba172b6184c2cb768f0c25bc2d8c7fe75dd560cbce"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
