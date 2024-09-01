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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240831/TensorFlowLiteC.xcframework.zip", checksum: "7ff61f8901af6a70eced84c054f404851df288044eb44f69d84965de2a3d2f3a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240831/TensorFlowLiteCCoreML.xcframework.zip", checksum: "00074367e6238f4654e7c6178a3543efb5f84981f40398d5d5652dab2eee2d11"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240831/TensorFlowLiteCMetal.xcframework.zip", checksum: "6863a0b9c9569cd58e66070d8e4fcdb80f2db57a5889c01395eb488d5127e8a1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
