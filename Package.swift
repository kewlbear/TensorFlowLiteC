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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240119/TensorFlowLiteC.xcframework.zip", checksum: "71b0c3957f105aa0bf4cb227e0d44d180d2c28f7948a648286b5129e08da08dc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240119/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f1931a4ea2fe1096458be06788dc4be147e2f7f773e42ba99d2ae2566eb85d77"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240119/TensorFlowLiteCMetal.xcframework.zip", checksum: "0567ae05f5c84efe4c56df9578d027d29e05f744a02d7d123dafa8993c31df7d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
