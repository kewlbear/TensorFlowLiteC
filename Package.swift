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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210918/TensorFlowLiteC.xcframework.zip", checksum: "abb9799e72e87f73bb8f460c50e7fa372dc7ae513c2e638d39f9a1c4650b49a3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210918/TensorFlowLiteCCoreML.xcframework.zip", checksum: "34f3f6ac72a2b96fa6347ac920ad69a25beac9501c743e1d79a73cf2de403ea9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210918/TensorFlowLiteCMetal.xcframework.zip", checksum: "2ab0d4a649f05865440a491afdf63c61993901cda817a1d4dfd86d80c22b1f74"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
