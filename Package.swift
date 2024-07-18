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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240717/TensorFlowLiteC.xcframework.zip", checksum: "c9344472dc8b900de3a686c870a228e590e24c3bad20a21730a1682a6653f087"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240717/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4f0573eaad56e1f4811167c8a2ec676a9e215f33655bda3ba9d9286e4b094e4b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240717/TensorFlowLiteCMetal.xcframework.zip", checksum: "81541d321020de87da7dd4458e9cca336ac69c6e3eb31b880d6ba2ca25fcb21c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
