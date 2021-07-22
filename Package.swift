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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210721/TensorFlowLiteC.xcframework.zip", checksum: "35fcc7f78811bedefec93a1cddf6f0576434cff36d47b29743a8eec82543848e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210721/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f7e78765b3d53972b5e56153391e1ce0cc255cd4c6ce9b03cdbabe8f38eb9ef1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210721/TensorFlowLiteCMetal.xcframework.zip", checksum: "215ba629f334fa76d5a0af8a8564af4a39bf4a79e77fe8b0a5a92b02b8f1e13f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
