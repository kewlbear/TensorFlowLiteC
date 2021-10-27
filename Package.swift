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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211026/TensorFlowLiteC.xcframework.zip", checksum: "c3577afb6e617ce1f014d67d155b1385833ad1e7783621e79cc265f5850c935c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211026/TensorFlowLiteCCoreML.xcframework.zip", checksum: "edf24cdcf9e43a85ebd38afe571341a2845ecf527a13be1c676c91c0a357b6ee"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211026/TensorFlowLiteCMetal.xcframework.zip", checksum: "75f1e035ae39d998aa67fa9003f7cce4e2f987c47997857ec8cad1c901d64f66"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
