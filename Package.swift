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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240120/TensorFlowLiteC.xcframework.zip", checksum: "33acb8ef0f00434acb1051918af9874d82022abf348f00b5632b0cb5679bc78b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240120/TensorFlowLiteCCoreML.xcframework.zip", checksum: "aa542cd543f411b31eb97efd9b6b0a806daf3071cf810696e4d7e39d371497d9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240120/TensorFlowLiteCMetal.xcframework.zip", checksum: "b6f6e822e239359b729b630f4586c7cbdce8ac6dc1a5c3fd8abf19e2f1056879"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
