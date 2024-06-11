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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240610/TensorFlowLiteC.xcframework.zip", checksum: "a772f001be897e898666c55323025962aee631a4c2d7e62d807d2320d319903e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240610/TensorFlowLiteCCoreML.xcframework.zip", checksum: "32db696079bcbc9c20b9f26fe0a4face0770e0297589983cbd3aeb6d79a6a4f2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240610/TensorFlowLiteCMetal.xcframework.zip", checksum: "cc60fc78482a44b36c8e2b5f6824cfdfe1dd8658f02c033bbf0444577d541065"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
