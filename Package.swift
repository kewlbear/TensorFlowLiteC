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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231211/TensorFlowLiteC.xcframework.zip", checksum: "f30f0868fb515230749b3b719c3cd8974e185bc05466af4e2b22b7dc41c9b2f6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231211/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ca9cabf28da035cf39a9f3b4fdf3b23c543c8cdffa82b8dcc7382c275a96a7b2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231211/TensorFlowLiteCMetal.xcframework.zip", checksum: "bf6a48df2e68051a6d9ceb5e59957470e12715d93e30c13fc233ff6bc78f91b7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
