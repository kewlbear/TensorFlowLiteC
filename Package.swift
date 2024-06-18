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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240617/TensorFlowLiteC.xcframework.zip", checksum: "ca78011277cb3a47962bde83243e0b44aced834b2a3b10a63f8f9b0a9e34c31b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240617/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8697420f5cbeaa65c1a6d6506543a84fa7689e3f22630d9e8dbcbab0734b7aaf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240617/TensorFlowLiteCMetal.xcframework.zip", checksum: "075a72c7e8fdf9b73faf1f11f020d14842e45e32b0318806300fdf31bcdff8bd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
