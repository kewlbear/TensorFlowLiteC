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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230305/TensorFlowLiteC.xcframework.zip", checksum: "b768e0da23371a96bebeb06be1aff8d40826672a8d7ea3e24839195daf60ab78"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230305/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5fd590228c8b6cc78b6a71c20f3534ce1cbf6bcab75f3e97a12cb56d656d75ad"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230305/TensorFlowLiteCMetal.xcframework.zip", checksum: "304384d44653f5ba81acdceab8477885fc0c444f20760f1991aff386b4c75125"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
