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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210719/TensorFlowLiteC.xcframework.zip", checksum: "9c56a6cdc875fed4df7992b8861279ceb6e73ae5011768150389ef188ed3ae34"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210719/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1ded447f3a82cf9b7aba2ca5ba59151f6c9c42e960d26a95a1e6a77bec3b835e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210719/TensorFlowLiteCMetal.xcframework.zip", checksum: "6bd961145229e06ada5d8e0646fa1b787627c2cff9e3fbb2d412cea4fea38b95"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
